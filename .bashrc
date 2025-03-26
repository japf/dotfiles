alias s="script/server --debug"

alias t="bin/rails test"
alias temu="TEST_WITH_ALL_EMUS=1 bin/rails test"
alias tall="TEST_ALL_FEATURES=1 bin/rails test"
alias tmt="MULTI_TENANT_ENTERPRISE=1 bin/rails test"

alias u="bin/rails test -n /uuu/"
alias uemu="bin/rails test -n /uuu/"
alias uall="TEST_ALL_FEATURES=1 bin/rails test -n /uuu/"
alias umt="MULTI_TENANT_ENTERPRISE=1 bin/rails test -n /uuu/"

alias c="clear"
alias mig="bin/rake db:migrate db:test:prepare"

git config fetch.showForcedUpdates false
