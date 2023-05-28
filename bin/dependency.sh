#!/bin/sh

# VERIFY all required applications are installted
which_package()  {
	returncode=0
	for pkg in "$@"
	do
		which "$pkg" >/dev/null
		if [ $? -eq 1 ]; then
			returncode=1
			echo "-> Install package $pkg"
		fi
	done
	return $returncode
}

which_package "$@"

if [ $? -eq 1 ]; then
	echo "[ ] ERROR Please install all mentioned packages"
	exit 1
fi

echo "[x] ALL PACKAGES INSTALLED!"
