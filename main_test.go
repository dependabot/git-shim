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
			expected: "https://github.com/jakecoffman/git-https-shim",
		},
		{
			input:    "ssh://git@github.com/jakecoffman/git-https-shim",
			expected: "https://github.com/jakecoffman/git-https-shim",
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
