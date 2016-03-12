dotfilesdir := ~/dotfiles/
symdir := ~/
extension := .symlink

# find all .symlink files recursively with shell command find
symrpath := $(patsubst ./%,%,$(shell find . -name '*$(extension)'))
symapath := $(addprefix $(dotfilesdir),$(symrpath))
symhpath := $(addprefix $(symdir).,$(notdir $(subst $(extension),,$(symrpath))))

link: $(symhpath)

update:
	@echo -n "pulling dotfiles..."
	@git pull origin master

$(symhpath):
	@echo -n "Linking $@..."
	@$(eval stem=$(patsubst .%,%,$(notdir $(addsuffix $(extension),$@))))
	@ln -sf $(filter %$(stem),$(symapath)) $@
	@echo " Done"
