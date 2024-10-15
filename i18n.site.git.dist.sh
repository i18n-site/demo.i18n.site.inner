#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

if ! command -v minhtml &>/dev/null; then
  cargo install minify-html
fi
cd public
minhtml --output index.html --minify-css index.html

cd /tmp
mdcp=$DIR.cp
rm -rf $mdcp
cp -R $DIR $mdcp
cd $mdcp
rm -rf .git \
  .i18n/data/ zh ru ja \
  en/demo1/_ \
  en/demo2/_ \
  en/_ \
  out \
  git.config \
  i18n.site.git.dist.sh

cd .i18n/htm
mv ol.tmpl.yml ol.yml
cd ../..
git init
cp -f $DIR/git.config .git/config
git add .
git add -u
git commit -m'init'
git push origin main -f
