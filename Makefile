DEFUALT=all
RC_PACKAGES_FILE:=rc-list.txt
RC_PACKAGES:=$(shell cat rc-list.txt)

all: plan build

plan: deps
	stow -nvSt ~ .

build:
	echo "stow and stuff"

test: deps
	echo "testing"

sync:
	echo "sync with diff stow changes"

deps: bin/verify.sh ${RC_PACKAGES_FILE}
	./bin/verify.sh $(RC_PACKAGES)
