# These are my dotfiles 
## Im on Arch using HyDe project to setup my Hyprland

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ https://github.com/Hulff/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
