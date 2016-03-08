install: git-pull\
	~/.config\
	~/.vim\
	~/.zsh\
	~/.zshrc\
	~/.oh-my-zsh\
	~/.tmux\
	~/.tmux.conf

git-pull:
	@echo -n "pulling dotfiles..."
	@git pull

~/.config:
	@echo -n "Making $@..."
	@rm -rf ~/.config
	@ln -sf $(CURDIR)/config $@
	@echo " Done"

~/.vim:
	@echo -n "Making $@..."
	@ln -sf $(CURDIR)/vim $@ 
	@echo " Done"

~/.zsh:
	@echo -n "Making $@..."
	@ln -sf $(CURDIR)/zsh $@
	@echo " Done"

~/.zshrc:
	@echo -n "Making $@..."
	@ln -sf $(CURDIR)/zsh/zshrc $@ 
	@echo " Done"

~/.oh-my-zsh:
	@echo -n "Making $@..."
	@ln -sf $(CURDIR)/oh-my-zsh $@ 
	@echo " Done"

~/.tmux:
	@echo -n "Making $@..."
	@ln -sf $(CURDIR)/tmux $@
	@echo " Done"

~/.tmux.conf:
	@echo -n "Making $@..."
	@ln -sf $(CURDIR)/tmux/tmux.conf $@
	@echo " Done"
