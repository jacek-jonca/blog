#!/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
git clone https://github.com/jacek-jonca/jacek-jonca.github.io.git
cp -ap /public/. /jacek-jonca.github.io/

#if [ -n "$GH_TOKEN" ]
#then
#    touch ~/.git-credentials
#    chmod 0600 ~/.git-credentials
#    echo $GH_TOKEN > ~/.git-credentials
#    git config credential.helper store
#    git config --global user.email "${GIT_EMAIL}"
#    git config --global user.name "${GIT_NAME}"
#    git config --global push.default simple
#fi
#git remote add origin https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git
cs jacek-jonca.github.io
git add --all
git commit -m "Rebuild site"
#git push --force origin HEAD:master
git push
