# Dotfiles

These are my personal dotfiles, configuration for a few programs: zsh, vim, tmux, as well as fonts and color schemes.
**features** : topical orginizations, auto-sourcing zsh files

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `make link`.

## install

```
git clone https://github.com/jhalford/dotfiles.git ~/dotfiles
cd ~/dotfiles
make backup
make wipe-install
make link
```

your default shell is contained in the variable `$SHELL`
to change it:
```shell
chsh -s `which zsh`
```
then logout / login to see changes

### Components

Use `make wipe-install` to erase and clone all dependencies. (This solution is shitty, intention is to implement them as git-submodules later on).

All the dependencies :

| Packet | What is it ? |
|--------|-----|
| [base16-shell](https://github.com/JohnMorales/base16-shell.git) | Awesome colors |
| [powerline fonts](https://github.com/powerline/fonts.git ~/do) | Awesome fonts |
| [bullet train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme.git) | ZSH theme |
| [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh.git) | ZSH framework |
| [vundle](https://github.com/VundleVim/Vundle.vim.git) | Vim plugin manager |
| [tpm](https://github.com/tmux-plugins/tpm.git) | Tmux plugin manager |

#### Makefile usage
`make help` briefly explains how to use the makefile

### Z-shell (zsh)

zsh is a generally more user friendly shell than bash, read here about the differences: [Comparison of zsh to other shells](http://zsh.sourceforge.net/FAQ/zshfaq02.html)

### [Powerline fonts](https://github.com/powerline/fonts)

Powerline fonts is a patch for multiple fonts to work with the powerline zsh theme. To use one, go to your terminal profile settings, look for "powerline" in the fonts menu, I like to use 'Inconsolata-g for Powerline g'.

### [Base16 Colors](https://github.com/JohnMorales/base16-shell.git)

I use a script written by John Morales to switch Base16 fonts easily, type base16_theme_variation to activate a particular colorset, [base 16 color viewer](https://chriskempson.github.io/base16/)
