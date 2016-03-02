#!/bin/bash

#"$1" = File to check.
PWD_SanityCheck() {
	if [[ $(ls -ld ./"$1") ]]
	then
		echo -e '\E[1;32;46m Found file '"$1"', proceeding. \E[0m'
	else
		echo -e '\E[1;33;41m *DANGER* Did not find file '"$1"'! *DANGER* \E[0m'
		echo -e '\E[1;33;41m Aborting! \E[0m'
		exit
	fi
}

PWD_SanityCheck "$0"

if [[ -e "./_build" ]]
then
	rm --preserve-root --one-file-system --recursive "./_build"
fi


