DEFUALT=all

all: plan build

plan: deps
	stow -nvSt ~ alacritty

build:
	echo "stow and stuff"

sync:
	echo "sync with diff stow changes"

deps: bin/verify.sh
	./bin/verify.sh stow git alacritty ranger nvim tmux
