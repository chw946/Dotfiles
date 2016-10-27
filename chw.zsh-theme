if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
MACHINE="silver1"
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

PROMPT='%{$fg[$NCOLOR]%}chw%{$reset_color%}@%{$fg[cyan]%}$MACHINE\
%{$reset_color%}:%{$fg[magenta]%}%~\
$(git_prompt_info) \
%{$fg[red]%}%(!.#.»)%{$reset_color%} ${ret_status}'
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}○%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}]%{$reset_color%}"
