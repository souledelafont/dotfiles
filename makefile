dotfilesdir := ~/dotfiles/
symdir := ~/
extension := .symlink
bulletpath := $(dotfilesdir)zsh/oh-my-zsh.symlink/themes/bullet-train.zsh-theme

# find all .symlink files recursively with shell command find
symrpath := $(patsubst ./%,%,$(shell find . -name '*$(extension)'))
symapath := $(addprefix $(dotfilesdir),$(symrpath))
symhpath := $(addprefix $(symdir).,$(notdir $(subst $(extension),,$(symrpath))))

help:
	@echo "DOTFILES MAKEFILE USAGE:"
	@echo "------------------------"
	@echo "make link	: symlink from ~ to dotfiles"
	@echo "make backup	: move existing dotfiles to ~/.backup"
	@echo "make update	: git pull changes"
	@echo "make wipe-update	: re-install all dependencies"

.PHONY: link update backup help wipe-install

link: $(symhpath)

update:
	@echo -n "pulling dotfiles..."
	@git pull origin master

$(symhpath):
	@echo -n "Linking $@..."
	@$(eval stem=$(patsubst .%,%,$(notdir $(addsuffix $(extension),$@))))
	@ln -sf $(filter %$(stem),$(symapath)) $@
	@echo " Done"

backup:
	@mkdir -p ~/.backup
	@echo "Backed up all dotfiles in ~/.backup"
	@$(shell mv -t$(HOME)/.backup $(symhpath) 2>/dev/null)

wipe-install:
	@rm -rf ~/dotfiles/vim.symlink/bundle/Vundle.vim ~/dotfiles/colors.symlink/base16-shell ~/dotfiles/fonts.symlink/powerline-fonts ~/dotfiles/zsh/bullet-train-oh-my-zsh-theme ~/dotfiles/zsh/oh-my-zsh.symlink ~/dotfiles/tmux.symlink/plugins/tpm
	@git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/vim.symlink/bundle/Vundle.vim
	@git clone https://github.com/JohnMorales/base16-shell.git ~/dotfiles/colors.symlink/base16-shell
	@git clone https://github.com/powerline/fonts.git ~/dotfiles/fonts.symlink/powerline-fonts
	@git clone https://github.com/caiogondim/bullet-train-oh-my-zsh-theme.git ~/dotfiles/zsh/bullet-train-oh-my-zsh-theme
	@git clone https://github.com/robbyrussell/oh-my-zsh.git ~/dotfiles/zsh/oh-my-zsh.symlink
	@git clone https://github.com/tmux-plugins/tpm.git ~/dotfiles/tmux.symlink/plugins/tpm
