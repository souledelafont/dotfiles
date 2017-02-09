![logo](https://cdn.rawgit.com/jzck/dotfiles/master/dotfiles-logo.png)

These are my personal dotfiles, configuration for a few programs: `zsh`, `vim`, `tmux`, `git`, as well as fonts and colors.  
**cool features** : topical organization, auto-sourcing zsh files, automatic rc file linking to `$HOME`

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
sourced. Anything with an extension of `.ln` will get
symlinked without extension into `$HOME` when you run `make link`.

typical organizations goes as:

  - topic/xxx.zsh
  - topic/xxx.ln

## install

```
git clone https://github.com/jhalford/dotfiles.git ~/dotfiles
cd ~/dotfiles
git submodule update --init
make re
```

## components

All the exterior components are implemented as `git submodules`.

| Component | What is it ? |
|--------|-----|
| [base16-shell](https://github.com/JohnMorales/base16-shell.git) | Awesome colors |
| [powerline fonts](https://github.com/powerline/fonts.git ~/do) | Awesome fonts |
| [bullet train](https://github.com/caiogondim/bullet-train-oh-my-zsh-theme.git) | ZSH theme |
| [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh.git) | ZSH framework |
| [vundle](https://github.com/VundleVim/Vundle.vim.git) | Vim plugin manager |
| [tpm](https://github.com/tmux-plugins/tpm.git) | Tmux plugin manager |
