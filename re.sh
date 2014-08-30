#!/bin/sh
 
git filter-branch --env-filter '
 
an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"
 
if [ "$GIT_COMMITTER_EMAIL" = "jackson.oates@gmail.com" ]
then
    cn="Jackson Oates"
    cm="jackson.oates@gmail.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "jackson.oates@gmail.com" ]
then
    an="Jackson Oates"
    am="jackson.oates@gmail.com"
fi
 
export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
