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
	@echo "make link to create symlinks"
	@echo "make backup to create a backup"
	@echo "make update to git pull dotfiles"

.PHONY: link update backup help

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
	

# @$(foreach link,$(symhpath),$(shell mv $(link) ~/.backup/$(notdir $(link))))
	

