FROM ubuntu

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y --no-install-recommends \
    ca-certificates \
    git \
    golang

# Build the git-shim and put it in the path before the real git.
COPY . /app
WORKDIR /app
RUN go build
ENV PATH="/app:${PATH}"

# Run commands that normally will fail since ssh isn't on this system.
RUN git clone git@github.com:dependabot/git-shim.git
RUN git ls-remote git+ssh://git@github.com/dependabot/git-shim.git
RUN cd git-shim && git fetch ssh://git@github.com/dependabot/git-shim.git
