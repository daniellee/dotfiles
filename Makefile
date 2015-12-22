DOTFILES := $(shell pwd)

all: crossplatform dotfiles

crossplatform:
		bash $(DOTFILES)/script/generic.sh

platform:
		bash $(DOTFILES)/script/platform.sh

dotfiles:
		bash $(DOTFILES)/script/bootstrap.sh

mac:	platform crossplatform dotfiles

linux:	crossplatform dotfiles platform

windows: crossplatform dotfiles platform
