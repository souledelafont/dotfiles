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
	@#printf "index="$(INDEX)
	@$(eval stem=$(patsubst .%,%,$(notdir $(addsuffix $(extension),$@))))
	@$(eval source=$(filter %$(stem),$(symapath)))
	@$(if $(filter 0,$(INDEX)),printf "\e[4mGoing to link your config files now:\e[24m\n")
	@# different printf for even/odd INDEX
	$(if $(filter 0,$(shell echo "$(INDEX)%2" | bc)),\
		@printf "\e[38;5;239m",\
		@printf "\e[38;5;246m")
	@# different printf for INDEX=0
	$(if $(filter 0,$(INDEX)),\
		@printf "$@\t ➔  $(filter %$(stem),$(symapath))\n",\
		@printf "%*s%s\t ➔  %*s%s\n" \
		12 " " $(notdir $@) \
		11 " " $(notdir $(source)))
	@# different printf for even/odd INDEX
	$(if $(filter 0,$(shell echo "$(INDEX)%2" | bc)),\
		@printf "\e[39m",\
		@printf "\e[39m")
	@ln -sf $(filter %$(stem),$(symapath)) $@
	@$(eval INDEX=$(shell expr $(INDEX) + 1))

backup:
	@mkdir -p ~/.backup
	$(foreach file,$(symhpath), $(shell mv -f $(file) ~/.backup/ 2>&-\
   	   || rm $(file) 2>&-))
	@printf "👌 Backed up all corresponding dotfiles in ~/.backup\n"

re: backup link
