#!/bin/sh

echo "Do the plan checkout? [N/y]?"
read -r verified
if [ "${verified}" != "y" ] && [ "${verified}" != "Y" ]; then
	exit 1
fi
