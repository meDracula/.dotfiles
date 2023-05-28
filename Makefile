DEFUALT=all

all: require diff

require: bin/verify.sh
	./bin/verify.sh

build:
	echo "stow and stuff"

sync:
	echo "sync with diff stow changes"

diff:
	stow -nvSt ~ alacritty 
