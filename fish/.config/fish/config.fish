# ENV Variables
set fish_greeting
set -x FZF_DEFAULT_OPTS '--color=bg+:#3B4252,bg:#2E3440,spinner:#81A1C1,hl:#616E88,fg:#D8DEE9,header:#616E88,info:#81A1C1,pointer:#81A1C1,marker:#81A1C1,fg+:#D8DEE9,prompt:#81A1C1,hl+:#81A1C1' # nord color for fzf
set -x BAT_THEME "Nord"

#keybinding for fzf \e is escape or alt, \c is ctrl
#fzf_configure_bindings --help to read help
fzf_configure_bindings --directory=\ec --history=\er --git_log= --git_status= --variables=\ev

# vim keybinding for fish
fish_vi_key_bindings

function fish_prompt
    powerline-shell --shell bare $status
end

use_terminal_colors
configure_goldfish

