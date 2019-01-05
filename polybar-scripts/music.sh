#!/bin/sh

music=$(ncmpcpp --current-song="%a - %t" | tail -n 1)

if [[ -n $music ]]
then 
	echo "np: $music";
else
	echo "n/a";

fi
