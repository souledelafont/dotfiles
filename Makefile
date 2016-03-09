dotfilesdir = ~/dotfiles/
symdir = ~/
extension = .symlink
symtars = $(abspath $(wildcard *.symlink))
symlinks = $(addprefix $(symdir).,$(notdir $(subst $(extension),,$(symtars))))

all : $(symlinks)

git-pull:
	@echo -n "pulling dotfiles..."
	@git pull origin master

$(symlinks):
	@echo -n "Linking $@..."
	@ln -sf $(addprefix $(dotfilesdir),$(subst .,,$(notdir $@))).symlink $@	
	@echo " Done"
