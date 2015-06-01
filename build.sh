#!/bin/bash

git checkout gh-pages
git merge master

for adoc in `find . -name "*.adoc"`
do
	cd `dirname $adoc`
	asciidoctor `basename $adoc`
	cd $OLDPWD
done

cp README.html index.html 
