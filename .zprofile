git config --global alias.latest "for-each-ref --sort=-committerdate --count=20 --format='%(align:50,left)%(refname:short)%(end)%(committerdate:relative)' refs/heads/"
