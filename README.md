# dotfiles

These are my personal dotfiles, configuration for programs I use too frequently not to configure : zsh, vim, tmux

Also contains fonts and color schemes.

## Installation

clone this repo and make symlinks.

  git clone https://github.com/jhalford/dotfiles.git ~/dotfiles
  make link
  make update
  
some dependencies will be missing (too large). I intend on adding these as submodules later.

- vundle `git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/vim.symlink/bundle/Vundle.vim`
- base16-shell `git clone https://github.com/JohnMorales/base16-shell.git ~/dotfiles/colors/base16-shell`
- powerline fonts `git clone https://github.com/powerline/fonts.git ~/dotfiles/fonts/powerline-fonts`
- bullet train `git clone https://github.com/caiogondim/bullet-train-oh-my-zsh-theme.git ~/dotfiles/zsh/bullet-train-oh-my-zsh-theme`
- oh-my-zsh `git clone https://github.com/robbyrussell/oh-my-zsh.git ~/dotfiles/zsh/oh-my-zsh.symlink`
- tpm `git clone https://github.com/tmux-plugins/tpm.git ~/dotfiles/tmux/plugins/tpm`

## Usage

#### Fonts

Powerline fonts is a patch for multiple fonts to work with the powerline zsh theme. To use one, go to your terminal profile settings, look for "powerline" in the fonts menu, I like to use 'Inconsolata-g for Powerline g'.

#### Colors

I use a script written by John Morales to switch Base16 fonts easily, type base16_theme_variation to activate a particular colorset, all themes are found at https://chriskempson.github.io/base16/ , variations are dark/light.
