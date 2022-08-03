# git https shim

This git shim replaces any URL or SCP-style URL as an argument to git with an HTTPS URL.

This is useful in a corporate environment where an HTTP Proxy is used. You could use the command `git config --global url."https://".insteadOf git://` but that doesn't work for SCP-style style URLs: `git@github.com:org/repo.git` due to the colon `:`.

How does it work? You place this git shim on your path before the actual git. When it runs, it finds arguments and replaces them, and then invokes the next git on the path with the scrubbed arguments.

## Installation

### Prebuilt

- Go to the latest [Release](https://github.com/dependabot/git/releases)
- Download the binary for your device
- Unarchive and place the binary somewhere accessable like `~/bin`
- Edit your PATH environment variable to place `~/bin` before where `git` is installed, like `PATH=$HOME/bin:/usr/bin`.
- Restart your terminal

### From Source

With Go installed, ensure Go's bin path is on the $PATH environment variable before `git` and run:

```
go install github.com/dependabot/git@latest
```

You may need to restart your terminal, or `source` on your .*rc/profile.
