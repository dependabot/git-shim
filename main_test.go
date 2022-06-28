package main

import (
	"fmt"
	"net/url"
	"testing"
)

func TestScrub(t *testing.T) {
	var cases = []struct {
		input    string
		expected string
	}{
		{
			input:    "git://github.com/jakecoffman/git-https-shim",
			expected: "https://github.com/jakecoffman/git-https-shim",
		},
		{
			input:    "git@github.com:jakecoffman/git-https-shim",
			expected: "https://git@github.com/jakecoffman/git-https-shim",
		},
		{
			input:    "ssh://git@github.com/jakecoffman/git-https-shim",
			expected: "https://git@github.com/jakecoffman/git-https-shim",
		},
		{
			input:    "ssh://github.com/jakecoffman/git-https-shim",
			expected: "https://github.com/jakecoffman/git-https-shim",
		},
		{
			input:    "HEAD~1",
			expected: "HEAD~1",
		},
	}

	for _, test := range cases {
		t.Run(fmt.Sprintln(test.input), func(t *testing.T) {
			if v := Scrub(test.input); v != test.expected {
				t.Errorf("Input: %v\tExpected: %v\tGot: %v\n", test.input, test.expected, v)
			}
		})
	}
}

func TestFindGit(t *testing.T) {
	t.Run("finds the second git", func(t *testing.T) {
		if v := FindGit("test/bin1:test/bin2:test/bin3"); v != "test/bin2/git" {
			t.Errorf(v)
		}
	})
	t.Run("finds nothing", func(t *testing.T) {
		if v := FindGit("test/bin1"); v != "" {
			t.Errorf(v)
		}
	})
}

func FuzzScrub(f *testing.F) {
	testcases := []string{
		"https://github.com/org/repo",
		"ssh://git@github.com/org/repo",
		"git@github.com:org/repo",
		"git://github.com/repo",
		"HEAD~1",
		"+/refs/HEAD",
	}
	for _, tc := range testcases {
		f.Add(tc)
	}
	f.Fuzz(func(t *testing.T, orig string) {
		result := Scrub(orig)
		if result != orig {
			if extractHost(orig, true) != extractHost(result, false) {
				// transformed a nonURL into a URL or changed what the URL was, which could be an attack
				t.Errorf("Before: %q (%q), after: %q (%q)", orig, extractHost(orig, true), result, extractHost(result, false))
			}
		}
	})
}

func extractHost(input string, orig bool) string {
	u, err := url.ParseRequestURI(input)
	if err == nil {
		return u.Hostname()
	}
	if !orig {
		return ""
	}
	if scpUrl.MatchString(input) {
		return scpUrl.FindStringSubmatch(input)[2]
	}
	return ""
}
