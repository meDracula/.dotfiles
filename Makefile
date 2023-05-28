DEFUALT=all
RC_PACKAGES_FILE:=rc-list.txt
RC_PACKAGES:=$(shell cat rc-list.txt)

all: plan verify_plan build

plan: deps
	stow -nvSt ~ */

build:
	stow -vSt ~ */

destory:
	stow -vDt ~ */

deps: bin/dependency.sh ${RC_PACKAGES_FILE}
	./bin/dependency.sh $(RC_PACKAGES)

verify_plan: bin/verify.sh
	./bin/verify.sh
