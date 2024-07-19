#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

cd /tmp
mdcp=$DIR.cp
rm -rf $mdcp
cp -R $DIR $mdcp
cd $mdcp
rm -rf .git \
  .i18n/hash/ \
  .i18n/cache/ zh \
  en/demo1/_ \
  en/demo2/_ \
  en/_ \
  out \
  git.config \
  i18n.site.git.dist.sh

git init
cp -f $DIR/git.config .git/config
git add .
git add -u
git commit -m'init'
git push origin main -f
