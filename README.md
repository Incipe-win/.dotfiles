# dotfiles

> Managed by [dotrix](https://github.com/Incipe-win/dotrix) — single-binary dotfiles manager written in modern C++20.

## What is this?

This repo stores my personal configuration files. Every file mirrors its `$HOME` path — `.zshrc` here maps to `~/.zshrc`, `.config/nvim/` maps to `~/.config/nvim/`.

## How it works

```
dotrix add ~/.zshrc        # start tracking
dotrix capture             # save changes → repo
dotrix sync                # deploy repo → live (auto-merge secrets)
```

## Secrets

API keys and tokens are automatically redacted as `__DOTRIX_REDACTED__` before
committing. On sync, live secrets are preserved — new config options are merged
in while keeping your real keys.

## New machine setup

```bash
git clone https://github.com/Incipe-win/dotrix.git ~/dotrix
cd ~/dotrix && xmake

git clone <this-repo> ~/.dotfiles
~/dotrix/dotrix sync
~/dotrix/dotrix setup --pick   # install dev tools
```

## Managed files

See `.dotrix/manifest.json` for the full list.
