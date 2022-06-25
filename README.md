# git https shim

This git shim replaces any URL or SSH "relative URL" with an HTTPS URL.

This is useful in a corporate environment where an HTTP Proxy is used. You could use the command `git config --global url."https://".insteadOf git://` but that doesn't work for SSH style commands: `git@github.com:org/repo.git`.

## Installation

With Go installed, ensure Go's bin path is on the $PATH environment variable before `git` and run:

```
go install github.com/jakecoffman/git
```

You may need to restart your terminal, or `source` on your .*rc/profile.
