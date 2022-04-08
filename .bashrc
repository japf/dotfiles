alias s="script/server --debug"
alias t="bin/rails test"
alias x="bin/rails test -n /xxx/"
alias t-all="TEST_ALL_FEATURES=1 bin/rails test"
alias c="clear"
alias p="git push"
alias mig="bin/rake db:migrate db:test:prepare"

echo "machine goproxy.githubapp.com login nobody password $GITHUB_TOKEN" >> $HOME/.netrc
