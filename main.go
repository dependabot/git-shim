package main

import (
	"fmt"
	"net/url"
	"os"
	"os/exec"
	"regexp"
	"strings"
)

func main() {
	// find the next git after the first one found
	os.Args[0] = FindGit(os.Getenv("PATH"))
	if os.Args[0] == "" {
		fmt.Fprintln(os.Stderr, "Failed to find git in the path")
		os.Exit(1)
		return
	}

	if IsRewriteAllowed(os.Args[1:]) {
		// Change any ssh or git url arguments to https
		for i, arg := range os.Args[1:] {
			os.Args[i+1] = Scrub(arg)
		}
	}

	// Run the scrubbed git command
	cmd := exec.Command(os.Args[0], os.Args[1:]...)
	cmd.Stderr = os.Stderr
	cmd.Stdout = os.Stdout
	err := cmd.Run()
	switch v := err.(type) {
	case *exec.ExitError:
		os.Exit(v.ExitCode())
	}
}

var allowedCommands = []string{"clone", "fetch"}

// IsRewriteAllowed returns true if it is safe to rewrite arguments. Some commands
// such as config would break if rewritten, like when using insteadOf.
func IsRewriteAllowed(args []string) bool {
	for _, arg := range args {
		if strings.HasPrefix(arg, "-") {
			continue
		}
		for _, allowed := range allowedCommands {
			if arg == allowed {
				return true
			}
		}
		return false
	}
	return false
}

// FindGit finds the second git executable on the path, the first being this one.
func FindGit(envPath string) string {
	paths := strings.Split(envPath, string(os.PathListSeparator))
	var shimPath string

	for _, path := range paths {
		entry, err := os.ReadDir(path)
		if err != nil {
			continue
		}
		for _, item := range entry {
			if item.IsDir() {
				continue
			}
			if item.Name() == "git" {
				if shimPath == "" {
					shimPath = path
					continue
				}
				if shimPath != path {
					return strings.Join([]string{path, "git"}, string(os.PathSeparator))
				}
			}
		}
	}
	return ""
}

var scpUrl = regexp.MustCompile(`^(?P<user>\S+?)@(?P<host>[a-zA-Z\d-]+(\.[a-zA-Z\d-]+)+\.?):(?P<path>.*?/.*?)$`)

// Scrub rewrites arguments that look like URLs to have the HTTPS protocol.
func Scrub(argument string) string {
	u, err := url.ParseRequestURI(argument)
	if err == nil && u.Scheme != "" {
		u.Scheme = "https"
		return u.String()
	}
	if scpUrl.MatchString(argument) {
		newUrl := "https://" + strings.Replace(argument, ":", "/", 1)
		u, err = url.ParseRequestURI(newUrl)
		if err != nil {
			// new URI isn't valid
			return argument
		}
		if u.Host != scpUrl.FindStringSubmatch(argument)[2] {
			// host changed, possible attack
			return argument
		}
		return newUrl
	}
	return argument
}
