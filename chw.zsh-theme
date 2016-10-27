if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
MACHINE="mbp"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='%{$fg[$NCOLOR]%}chw%{$reset_color%}@\
%{$fg[cyan]%}$MACHINE%{$reset_color%}\
${ret_status} %{$fg[cyan]%}%c%{$reset_color%}\
$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"
