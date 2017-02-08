dotfilesdir	:= ~/dotfiles/
symdir		:= ~/
extension	:= .symlink

# find all .symlink files recursively with shell command find
symrpath	:= $(patsubst ./%,%,$(shell find . -path ./.git -prune -o -name "*$(extension)" -print))
symapath	:= $(sort $(addprefix $(dotfilesdir),$(symrpath)))
symhpath	:= $(sort $(addprefix $(symdir).,$(notdir $(subst $(extension),,$(symrpath)))))

INDEX		= 0

help:
	@printf "\e[94m\e[7m"
	@echo "              -----------------------------                    "
	@echo "             💡  DOTFILES MAKEFILE USAGE 💡                      "
	@echo "              -----------------------------                    "
	@echo " make backup : move previous corresping dotfiles to ~/.backup. "
	@echo " make link   : symlink from *.symlink to dotfiles.             "
	@echo " make re     : backup and link.                                "
	@printf "\e[27m"

.PHONY: link update backup help

link: $(symhpath)

$(symhpath):
	@$(eval stem=$(patsubst .%,%,$(notdir $(addsuffix $(extension),$@))))
	@$(eval source=$(filter %$(stem),$(symapath)))
	@# Start of linkage message
	@$(if $(filter 0,$(INDEX)),printf "\e[4mGoing to link your config files now:\e[24m\n")
	@# different printf for even/odd INDEX
	$(if $(filter 0,$(shell expr $(INDEX) % 2)),\
		@printf "\e[38;5;239m",\
		@printf "\e[38;5;246m")
	@# different printf for INDEX=0
	$(if $(filter 0,$(INDEX)),\
		@printf "$@\t ➔  $(shell echo $(source))\n",\
		@printf "%*s%s\t ➔  %*s%s\n" \
		$(shell expr $(shell echo $(dir $@) | wc -c) - 1) " " $(notdir $@) \
		$(shell expr $(shell echo $(dotfilesdir) | wc -c) - 1) " " $(notdir $(source)))
	@ln -sf $(source) $@
	@$(eval INDEX=$(shell expr $(INDEX) + 1))

backup:
	@mkdir -p ~/.backup
	$(foreach file,$(symhpath), $(shell mv -f $(file) ~/.backup/ 2>&-\
   	   || rm $(file) 2>&-))
	@printf "👌 Backed up all corresponding dotfiles in ~/.backup\n"

re: backup link
