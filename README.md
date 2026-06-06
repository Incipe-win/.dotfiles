# .dotfiles

> My personal config files — managed by [dotrix](https://github.com/Incipe-win/dotrix).

## New machine setup

```bash
# 1. System prerequisites
sudo apt install -y zsh git curl unzip build-essential

# 2. Build dotrix
git clone https://github.com/Incipe-win/dotrix.git ~/dotrix
cd ~/dotrix && xmake

# 3. Clone this repo
git clone https://github.com/Incipe-win/.dotfiles.git ~/.dotfiles

# 4. Set GitHub token
~/dotrix/dotrix config github_token ghp_xxx

# 5. Install shell tools (zsh plugins, prompt)
~/dotrix/dotrix setup --pick

# 6. Deploy configs
~/dotrix/dotrix sync

# 7. Install dev tools
~/dotrix/dotrix setup --pick

# 8. Switch shell
chsh -s $(which zsh) && exec zsh
```

## What's managed

See `.dotrix/manifest.json` for the full list.
