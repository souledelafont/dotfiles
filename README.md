# dotfiles

These are my personal dotfiles, configuration for a few programs: zsh, vim, tmux; fonts and color schemes.

#### Installation

clone this repo and make symlinks.

```
git clone https://github.com/jhalford/dotfiles.git ~/dotfiles
make link
```
#### Makefile usage
 
`make update` Pull changes from github
`make link` Looks recursively for files ending in `.symlink`, makes a symlink of that file in `$HOME`.

#### Missing dependencies

some dependencies will be missing (too large). I intend on adding these as submodules later.

- vundle `git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/vim.symlink/bundle/Vundle.vim`
- base16-shell `git clone https://github.com/JohnMorales/base16-shell.git ~/dotfiles/colors/base16-shell`
- powerline fonts `git clone https://github.com/powerline/fonts.git ~/dotfiles/fonts/powerline-fonts`
- bullet train `git clone https://github.com/caiogondim/bullet-train-oh-my-zsh-theme.git ~/dotfiles/zsh/bullet-train-oh-my-zsh-theme`
- oh-my-zsh `git clone https://github.com/robbyrussell/oh-my-zsh.git ~/dotfiles/zsh/oh-my-zsh.symlink`
- tpm `git clone https://github.com/tmux-plugins/tpm.git ~/dotfiles/tmux/plugins/tpm`

## Z-shell (zsh)

zsh is a generally more user friendly shell than bash, read here about the differences: [Comparison of zsh to other shells](http://zsh.sourceforge.net/FAQ/zshfaq02.html)

##### Installation

your default shell is contained in the variable `$SHELL`
to change it:
```shell
chsh -s `which zsh`
```
then logout / login to see changes

## Vim

##### Plugin manager : [Vundle](https://github.com/VundleVim/Vundle.vim)
 - add `Plugin 'user/plugin-name'` into plugins.vim
 - type `:PluginInstall` to install. (user and plugin-name are searched for on github)

## Tmux

##### Plugin manager : [tpm](https://github.com/tmux-plugins/tpm)

add them at the bottom of `~/.tmux.conf`
`prefix+I` like **I**nstall to fetch plugins

## Fonts

##### [Powerline fonts](https://github.com/powerline/fonts)
Powerline fonts is a patch for multiple fonts to work with the powerline zsh theme. To use one, go to your terminal profile settings, look for "powerline" in the fonts menu, I like to use 'Inconsolata-g for Powerline g'.

## Colors

##### [Base 16](https://github.com/chriskempson/base16)
I use a script written by John Morales to switch Base16 fonts easily, type base16_theme_variation to activate a particular colorset, [base 16 color viewer](https://chriskempson.github.io/base16/)
