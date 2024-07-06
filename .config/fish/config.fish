if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g FZF_DEFAULT_OPTS "--height 40% \
--layout=reverse \
--border \
--preview-window=right:60% \
--preview 'bat --color=always --style=header,grid --line-range :500 {}' \
--color=fg:#c0caf5,bg:#1a1b26,hl:#ff9e64 \
--color=fg+:#c0caf5,bg+:#292e42,hl+:#ff9e64 \
--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff \
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a"

alias ls='exa --color=always --group-directories-first'
set -g FZF_DEFAULT_COMMAND 'fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
starship init fish | source

set fish_color_normal c0caf5
set fish_color_command 7dcfff
set fish_color_keyword bb9af7
set fish_color_quote e0af68
set fish_color_redirection c0caf5
set fish_color_end ff9e64
set fish_color_error f7768e
set fish_color_param 9d7cd8
set fish_color_comment 565f89
set fish_color_selection --background=283457
set fish_color_search_match --background=283457
set fish_color_operator 9ece6a
set fish_color_escape bb9af7
set fish_color_autosuggestion 565f89
# Completion Pager Colors
set fish_pager_color_progress 565f89
set fish_pager_color_prefix 7dcfff
set fish_pager_color_completion c0caf5
set fish_pager_color_description 565f89
set fish_pager_color_selected_background --background=283457

rvm default
