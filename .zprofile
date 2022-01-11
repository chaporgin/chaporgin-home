export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/Users/chapson/Documents/yandex/scripts:$PATH"
export PATH="/Users/chapson/mdb-scripts/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
eval "$(pyenv init --path)"

# dev
alias dev_dir='ssh -A dev-os-1.dev-os.chapson.tools.development.prestable.qloud-d.yandex.net'
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
export PAT_PROXY_FOR="*.cloud-preprod.yandex.net|*.yandexcloud.net|rc1*.db.yandex.net|mdb-infratest-*.db.yandex.net|*.infratest.db.yandex.net"
alias ssh="ssh -A"

# pssh, bastion
export PSSH_AUTH_SOCK="/private/var/tmp/pssh-agent.sock"
export SSH_AUTH_SOCK=${PSSH_AUTH_SOCK}
alias side_yadc_arc="ssh -A -t chapson-ide.sas.yp-c.yandex.net 'tmux -CC new -A -s yadc_arcadia -n arcadia_ide'"
alias side_yadc_cp="ssh -A -t chapson-ide.sas.yp-c.yandex.net 'tmux -CC new -A -s yadc_controlplane' -n controlplane_ide"
alias side_yadc_ui="ssh -A -t chapson-ide.sas.yp-c.yandex.net 'tmux -CC new -A -s mdb_ui' -n mdb_ui"
alias side_yadc_crossplane="ssh -A -t chapson-ide.sas.yp-c.yandex.net 'tmux -CC new -A -s crossplane' -n crossplane"
tmssh() { ssh -A -t root@$1 'tmux -CC new -A -s chapson' };
alias pssh="pssh -A -u root"

# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

if [ -f '/Users/chapson/yandex-cloud/path.bash.inc' ]; then source '/Users/chapson/yandex-cloud/path.bash.inc'; fi
# if [ -f '/Users/chapson/yandex-cloud/completion.zsh.inc' ]; then source '/Users/chapson/yandex-cloud/completion.zsh.inc'; fi
if [ -f '/Users/chapson/mdb-scripts/path.zsh.inc' ]; then source '/Users/chapson/mdb-scripts/path.zsh.inc'; fi
alias yapbcp="ya paste | pbcopy"
alias ynot="ya notify 'finished on mac'"
# alias watch_bootstrap='watch \'date && rsync --exclude="*providers*" --exclude=".terraform*" --exclude="*/stands/*/terraform/*" --exclude="*helmfile.yaml" --exclude="terraform.tfstate*" --exclude=".envrc" --exclude="sa.json" --exclude="secrets.yaml" --exclude="kubeconfig" --exclude="secrets.auto.tfvars" -chavzP --stats chapson-ide.sas.yp-c.yandex.net:/home/chapson/arcadia/cloud/mdb/bootstrap/ /Users/chapson/Documents/yandex/full-kubectl --delete | grep "Number of files transferred"\''
alias dust='dust --ignore-directory "arcadia"'
alias du='dust --ignore-directory "arcadia"'

# SOPS https://github.com/mozilla/sops/issues/304
GPG_TTY=$(tty)
export GPG_TTY
