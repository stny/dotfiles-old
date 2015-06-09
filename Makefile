DOTFILES = gitconfig gitignore tmux.conf

install: $(DOTFILES)
	@$(foreach file, $^, \
		ln -sfv "${PWD}/${file}" "${HOME}/.${file}"; \
	)

uninstall:
	@$(foreach file, $(DOTFILES), \
		rm -f "${HOME}/.${file}"; \
	)
	
