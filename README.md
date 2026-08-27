# Dotfiles

Personal macOS configuration for Zsh, Ghostty, and Neovim. The packages use
[GNU Stow](https://www.gnu.org/software/stow/) to create symlinks in the home
directory.

## Fresh setup

```sh
git clone https://github.com/ericostrowski3/dotfiles.git ~/dotfiles
cd ~/dotfiles
brew bundle
stow zsh ghostty nvim
```

If a destination file already exists, move it aside before running Stow so it
is not overwritten.

## Layout

- `zsh/` contains the shell setup, eza aliases, and Fastfetch startup.
- `ghostty/` contains the Gruvbox terminal configuration.
- `nvim/` contains Neovim defaults and the Gruvbox editor theme.
- `Brewfile` lists the tools needed to reproduce the setup.

## Updating

Edit the files normally through their paths in the home directory. They are
symlinks into this repository, so the changes will appear here automatically.

```sh
cd ~/dotfiles
git status
git add -A
git commit -m "Update dotfiles"
git push
```
