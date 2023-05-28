DEFUALT=all
RC_PACKAGES_FILE:=rc-list.txt
RC_PACKAGES:=$(shell cat rc-list.txt)

all: plan verify_plan build

plan: deps
	stow -nvSt ~ .

build:
	echo "stow and stuff"

test: deps
	echo "testing"

sync:
	echo "sync with diff stow changes"

deps: bin/dependency.sh ${RC_PACKAGES_FILE}
	./bin/dependency.sh $(RC_PACKAGES)

verify_plan: bin/verify.sh
	./bin/verify.sh
