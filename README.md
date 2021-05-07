# About
Homebrew Formula for the [CI Demo App](https://github.com/embano1/ci-demo-app)

## Install

```console
$ brew install embano1/ci-demo-app/demo-app
```

Verify it worked:

```console
$ demo-app version
version: 0.2.8
commit: f06c60b
date: 2021-05-04T14:38:01Z
```

## Update

After a new release, update the Brew release and version index with:

```console
$ brew update && brew outdated
```

If you want to install the new version:

```console
$ brew upgrade embano1/ci-demo-app/demo-app
```

## Uninstall (with remove Tap)

```console
$ brew uninstall demo-app
$ brew untap embano1/ci-demo-app
```
