package main

import (
	"fmt"
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
		if v := findGit("test/bin1:test/bin2:test/bin3"); v != "test/bin2/git" {
			t.Errorf(v)
		}
	})
	t.Run("finds nothing", func(t *testing.T) {
		if v := findGit("test/bin1"); v != "" {
			t.Errorf(v)
		}
	})
}
