#!/bin/sh

tidy -quiet -modify -indent -wrap index.html \
    && sed -i -e '/<meta name="generator"/d' index.html
pandoc -f html -t markdown index.html -o README.md
