#!/bin/bash

DOC_FOLDER=docs/

# Making Grunt be quiet.
grunt docs > /dev/null

if [ -z "$(git status --porcelain $DOC_FOLDER)" ]; then
  echo "$DOC_FOLDER is up to date."
  exit 0
else
  echo "$DOC_FOLDER needs updating..."

  git config user.email "anton.amlinger@gmail.com"
  git config user.name "Anton Amlinger"

  BRANCH="$(git name-rev --name-only HEAD)"
  git checkout -b temporary-gh-pages

  git add $DOC_FOLDER && git commit -m "Updated documentation"

  echo "Pushing to:"
  echo https://$GH_TOKEN@$GH_REF gh-pages

  git push https://${GH_TOKEN}@${GH_REF} `git subtree split --prefix=$DOC_FOLDER temporary-gh-pages`:gh-pages --force

  # Switching to previous brancs, cleaning up.
  git checkout $BRANCH
  git branch -D temporary-gh-pages

  exit 0
fi
