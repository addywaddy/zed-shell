bindkey '^r' history-incremental-search-backward
bindkey "^p" up-line-or-history
bindkey "^n" down-line-or-history
bindkey "^a" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^e"  end-of-line
bindkey "^[[4~" end-of-line
bindkey ' ' magic-space    # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand