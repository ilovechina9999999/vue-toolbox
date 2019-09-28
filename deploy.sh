#!/usr/bin/env sh

# abort on errors
set -e

# navigate into the build output directory
cd dist/spa

# if you are deploying to a custom domain
echo 'www.138921jkf.tk' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:ilovechina9999999/vue-toolbox.git master:gh-pages

cd -
