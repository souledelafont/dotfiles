# Dotfiles

These are my personal dotfiles, configuration for a few programs: zsh, vim, tmux, as well as fonts and color schemes.
**features** : topical organization, auto-sourcing zsh files

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
sourced. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `make link`.

typical organizations goes as:

  - topic/xxx.zsh
  - topic/xxx.symlink

## install

```
git clone --recursive https://github.com/jhalford/dotfiles.git ~/dotfiles
cd ~/dotfiles
make backup
make link
```

your default shell is contained in the `$SHELL` variable.
to change it:
```shell
chsh -s `which zsh`
```
then logout / login to see changes.

## Components

All the exterior components are implemented as "git submodules".

| Component | What is it ? |
|--------|-----|
| [base16-shell](https://github.com/JohnMorales/base16-shell.git) | Awesome colors |
| [powerline fonts](https://github.com/powerline/fonts.git ~/do) | Awesome fonts |
| [bullet train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme.git) | ZSH theme |
| [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh.git) | ZSH framework |
| [vundle](https://github.com/VundleVim/Vundle.vim.git) | Vim plugin manager |
| [tpm](https://github.com/tmux-plugins/tpm.git) | Tmux plugin manager |

#### Makefile usage
`make help` briefly explains how to use the makefile
`make update` will update the dotfiles AND all of the dependencies

### Z-shell (zsh)

zsh is a generally more user friendly shell than bash, read here about the differences: [Comparison of zsh to other shells](http://zsh.sourceforge.net/FAQ/zshfaq02.html)

### [Powerline fonts](https://github.com/powerline/fonts)

Powerline fonts is a patch for multiple fonts to work with the powerline zsh theme. To use one, go to your terminal profile settings, look for "powerline" in the fonts menu, I like to use 'Inconsolata-g for Powerline g' 12pt.

### [Base16 Colors](https://github.com/JohnMorales/base16-shell.git)

Base16 is a collection of beautiful 16-color sets, useable throughout the shell. John Morales wrote a neat script to switch Base16 fonts easily, type `base16_theme_variation` to activate a particular colorset, most themes can be previewed here : [base 16 color viewer](https://chriskempson.github.io/base16/)

------------------------------------------------------------------------------
Oh My Zsh Distribution Notes
------------------------------------------------------------------------------

What you are looking at now is Oh My Zsh's repackaging of zsh-history-substring-search 
as an OMZ module inside the Oh My Zsh distribution.

The upstream repo, zsh-users/zsh-history-substring-search, can be found on GitHub at 
https://github.com/zsh-users/zsh-history-substring-search.

This downstream copy was last updated from the following upstream commit:

  SHA:          f5c164d4c3af1f5bd068ee10f88b4c7b3a1fd841
  Commit date:  2016-03-06 22:33:47 -0800

Everything above this section is a copy of the original upstream's README, so things
may differ slightly when you're using this inside OMZ. In particular, you do not
need to set up key bindings for the up and down arrows yourself in `~/.zshrc`; the OMZ 
plugin does that for you. You may still want to set up additional emacs- or vi-specific
bindings as mentioned above.

