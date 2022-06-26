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
	os.Args[0] = findGit(os.Getenv("PATH"))
	if os.Args[0] == "" {
		fmt.Fprintln(os.Stderr, "Failed to find git in the path")
		os.Exit(1)
		return
	}

	// Change any ssh or git url arguments to https
	for i, arg := range os.Args {
		os.Args[i] = Scrub(arg)
	}

	// Run the scrubbed git command
	var cmd *exec.Cmd
	if len(os.Args) == 1 {
		cmd = exec.Command(os.Args[0])
	} else {
		cmd = exec.Command(os.Args[0], os.Args[1:]...)
	}
	cmd.Stderr = os.Stderr
	cmd.Stdout = os.Stdout
	err := cmd.Run()
	switch v := err.(type) {
	case *exec.ExitError:
		os.Exit(v.ExitCode())
	}
}

func findGit(envPath string) string {
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

var sshUrl = regexp.MustCompile(`^(?P<user>.*?)@(?P<host>.*?):(?:(?P<port>.*?)/)?(?P<path>.*?/.*?)$`)

func Scrub(argument string) string {
	u, err := url.Parse(argument)
	if err == nil && u.Scheme != "" {
		u.Scheme = "https"
		return u.String()
	}
	if sshUrl.MatchString(argument) {
		return "https://" + strings.Replace(argument, ":", "/", 1)
	}
	return argument
}
