dotfilesdir := ~/dotfiles/
symdir := ~/
extension := .symlink

# find all .symlink files recursively with shell command find
symrpath := $(patsubst ./%,%,$(shell find . -name '*$(extension)'))
symapath := $(addprefix $(dotfilesdir),$(symrpath))
symhpath := $(addprefix $(symdir).,$(notdir $(subst $(extension),,$(symrpath))))

all : $(symhpath)

git-pull:
	@echo -n "pulling dotfiles..."
	@git pull origin master

$(symhpath):
	@echo -n "Linking $@..."
	@$(eval stem=$(patsubst .%,%,$(notdir $(addsuffix $(extension),$@))))
	@ln -sf $(filter %$(stem),$(symapath)) $@
	@echo " Done"

# word wont take % as numeral
# $(word %, $(symhpath)):
# 	@echo -n "Linking $@..."
# 	ln -sf $(word %,$(symapath)) $@	
# 	@echo " Done"
	
# this solution cant get whole path for recursed files
# $(symhpath): 
# 	@echo -n "Linking $@..."
# 	@ln -sf $(addprefix $(dotfilesdir),$(subst .,,$(notdir $@))).symlink $@	
# 	@echo " Done"
