# Homebrew tap for Cadre

This is Cadre's first-party Homebrew tap. It installs the same Apple Silicon
disk image published on [Cadre's release page](https://cadre.cam/release-notes.html),
with its version and SHA-256 pinned in the cask.

Cadre is a macOS screen recorder with a non-destructive editor and a local MCP
integration for agent-assisted recording and editing.

## Install

```sh
brew install --cask ArthurBrioche/cadre/cadre
```

Alternatively:

```sh
brew tap ArthurBrioche/cadre
brew install --cask cadre
```

Cadre currently requires Apple Silicon and macOS 13 or later. The tap follows
Cadre's public release channel, which is currently a release candidate.

## Verify

```sh
brew info --cask ArthurBrioche/cadre/cadre
brew livecheck --cask ArthurBrioche/cadre/cadre
```

The current first-party checksum is also published at
<https://cadre.cam/CADRE.dmg.sha256>.

The immutable current release record is
<https://github.com/ArthurBrioche/cutro-releases/releases/tag/v1.0.0-rc.34>.
Its versioned disk image is the same signed and notarized artifact installed by
this cask.

## Uninstall

```sh
brew uninstall --cask cadre
```

`brew uninstall --cask --zap cadre` additionally removes Cadre caches and
preferences. The cask deliberately preserves `~/Library/Application Support/Cadre`,
where Cadre projects and downloaded caption models are stored.

This tap is maintained by Cadre's developer. It is not an endorsement by the
Homebrew project or an entry in Homebrew's official cask repository.
