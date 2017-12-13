![logo](https://cdn.rawgit.com/jzck/dotfiles/master/dotfiles-logo.png)

These are my personal dotfiles, configuration for everyday utilities: `zsh`, `vim`, `tmux`, `git`, `mutt`, as well as fonts and colors.
**cool features** : topical organization, auto-sourcing zsh files, automatic rc file linking to `$HOME`

## topical

Everything's built around topic areas. If you're adding a new area to your dotfiles — say, "tmux" — you can simply add a `tmux` directory and put files in there. Anything with an extension of `.zsh` will get automatically sourced. Anything with an extension of `.ln` will get symlinked without extension into `$HOME` when you run `./install.sh`.

## install

```
git clone --recursive https://github.com/jhalford/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

`git submodule update --recursive --init` if you forgot to clone recursively

## components

some exterior components are implemented as `git submodules` for easier management.

| Component | What is it ? |
|--------|-----|
| [base16-shell](https://github.com/JohnMorales/base16-shell.git) | Awesome colors |
| [powerline fonts](https://github.com/powerline/fonts.git) | Awesome fonts |
| [prezto](https://github.com/sorin-ionescu/prezto) | ZSH theming framework |
| [tpm](https://github.com/tmux-plugins/tpm.git) | Tmux plugin manager |
