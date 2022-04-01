alias s="script/server --debug"
alias t="bin/rails test"
alias x="bin/rails test -n /xxx/"
alias t-all="TEST_ALL_FEATURES=1 bin/rails test"
alias c="clear"
alias p="git push"
alias mig="bin/rake db:migrate db:test:prepare"

# done
if [ -n $CODESPACES ]; then
  # git hooks magic
  # [ -f /workspaces/github/script/git-hooks/pre-push ] && ln -s /workspaces/github/script/git-hooks/pre-push /workspaces/github/.git/hooks/pre-push
fi

echo "machine goproxy.githubapp.com login nobody password $GITHUB_TOKEN" >> $HOME/.netrc
