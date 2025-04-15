# python venv, user, host, full path and branch on two lines for easier vgrepping

ZSH_THEME_VIRTUALENV_PREFIX="%{$fg[white]%}(%{$fg[magenta]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$fg[white]%})%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} +"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✱"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%} ✈"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"

custom_virtualenv_prompt_info() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "${ZSH_THEME_VIRTUALENV_PREFIX}$(basename "$VIRTUAL_ENV")${ZSH_THEME_VIRTUALENV_SUFFIX}"
  fi
}

function mygit() {
  if [[ "$(git config --get oh-my-zsh.hide-status)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    echo " %B[${ref#refs/heads/}$(git_prompt_short_sha)$( git_prompt_status )%{$reset_color%}%b%B]%b "
  fi
}

prompt_truncated_pwd() {
  # Replace $HOME with ~ in the current path
  local path="${PWD/#$HOME/~}"
  # If it's just the home directory, just echo it
  if [[ "$path" == "~" ]]; then
    echo "$path"
  else
    # Split the path into an array using / as delimiter
    local -a dirs
    dirs=("${(s:/:)path}")
    # If there are more than 3 parts, show only the last 3 preceded by an ellipsis
    if (( ${#dirs[@]} > 3 )); then
      local last_three=("${dirs[@]: -3}")
      echo ".../$(IFS=/; echo "${last_three[*]}")"
    else
      echo "$path"
    fi
  fi
}

function retcode() {}

# alternate prompt with git & hg
PROMPT=$'%{\e[0;31m%}%B┌─[%{\e[1;34m%}%B%n%{\e[0m%}%b%{\e[1;37m%}@%{\e[0;32m%}%B%m%{\e[0m%}%b%{\e[0;31m%}]%b%{\e[0;31m%}[%{\e[0;33m%}$(prompt_truncated_pwd)%{\e[0;31m%}]%b %{$fg[magenta]%}$(custom_virtualenv_prompt_info)%{$reset_color%}$(mygit)
%{\e[0;31m%}%B└─▪%b%{\e[0;37m%}$ %b'
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
