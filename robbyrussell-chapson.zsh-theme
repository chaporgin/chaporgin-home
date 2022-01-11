setopt prompt_subst
PS1='%n@%m $(shrink_path -f)>'
PROMPT="%(?:%{$fg_bold[green]%}m:%{$fg_bold[red]%}m)"
PROMPT+=' %{$fg[cyan]%}$(shrink_path -f) %{$reset_color%}'
# PROMPT+=' %{$fg[green]%}$(arc branch 2>/dev/null | grep "*") %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
