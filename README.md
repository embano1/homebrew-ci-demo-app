# ci-demo-app-homebrew-tap
Homebrew Formula for the [CI Demo App](https://github.com/embano1/ci-demo-app)

## Install

Register the tap:

```bash
brew tap embano1/ci-demo-app git@github.com:embano1/ci-demo-app-homebrew-tap
```

> **Note:** If you don't have git set up with ssh, you can also use `https://github.com/embano1/ci-demo-app-homebrew-tap` instead of the `git@github.com...` syntax above.

Install the binary from tap:

```bash
brew install embano1/ci-demo-app/demo-app
```

Verify it worked:

```bash
demo-app version
version: 0.0.2
commit: 7fbb788
date: 2021-04-15T13:46:45Z
```

## Update

After a new release, update the Brew release and version index with:

```bash
brew update && brew outdated
```

If you want to install the new version:

```
brew upgrade embano1/ci-demo-app/demo-app
```

Verify it worked:

```bash
demo-app version
version: 0.0.3
commit: eb37257
date: 2021-04-15T15:19:36Z
```

## Uninstall

```bash
brew uninstall demo-app
brew untap embano1/ci-demo-app
```
