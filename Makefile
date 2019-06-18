default:
	@echo "No default target. Use make install_local to install to ~/.local/bin."
	@exit 2
.PHONY: default

install_local: ~/.local/bin/tts
.PHONY: install_local

~/.local/bin/tts: tts | ~/.local/bin
	cp tts ~/.local/bin/tts

~/.local/bin:
	mkdir -p ~/.local/bin
