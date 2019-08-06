# as seen on http://kriener.org/articles/2009/06/04/zsh-prompt-magic
setopt prompt_subst
# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stagedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
FMT_BRANCH="${PR_GREEN}%b%u%c${PR_RESET}" # e.g. master¹²
FMT_ACTION="(${PR_CYAN}%a${PR_RESET}%)"   # e.g. (rebase-i)
FMT_PATH="%R${PR_YELLOW}/%S"              # e.g. ~/repo/subdir

# check-for-changes can be really slow.
# you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true
zstyle ':vcs_info:*:prompt:*' unstagedstr '¹'  # display ¹ if there are unstaged changes
zstyle ':vcs_info:*:prompt:*' stagedstr '²'    # display ² if there are staged changes
zstyle ':vcs_info:*:prompt:*' actionformats " ${FMT_BRANCH}-${FMT_ACTION}" #"${FMT_PATH}"
zstyle ':vcs_info:*:prompt:*' formats       " ${FMT_BRANCH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""                             "%~"

function precmd {
  vcs_info 'prompt'
}

function lprompt {
  PROMPT_SYMBOL=" € "
  PROMPT_PATH="%~%B${PROMPT_SYMBOL}"
  PROMPT="${PR_CYAN}${PROMPT_PATH}${PR_RESET}"
}

function rprompt {
  TIME="${PR_MAGENTA}%T${PR_RESET}"
  local git='$vcs_info_msg_0_'
  GIT="${git}"
  RUBY='$(rbenv version-name)'
  RPROMPT="${VI_MODE}${TIME}${GIT}"
}

lprompt ""
rprompt ""
