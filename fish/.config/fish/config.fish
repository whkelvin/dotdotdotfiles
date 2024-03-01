# ENV Variables
set fish_greeting
set -x FZF_DEFAULT_OPTS '--color=bg+:#3B4252,bg:#2E3440,spinner:#81A1C1,hl:#616E88,fg:#D8DEE9,header:#616E88,info:#81A1C1,pointer:#81A1C1,marker:#81A1C1,fg+:#D8DEE9,prompt:#81A1C1,hl+:#81A1C1' # nord color for fzf
set -x BAT_THEME "Nord"

#keybinding for fzf \e is escape or alt, \c is ctrl
#fzf_configure_bindings --help to read help
fzf_configure_bindings --directory=\ec --history=\er --git_log= --git_status= --variables=\ev

# vim keybinding for fish
fish_vi_key_bindings

function bg_fg 
  test $argv[1] != "" && set_color -b $argv[1]
  test $argv[1] != "" && set_color $argv[2]
end

function fish_mode_prompt
  set b '2E3440'
  set w 'D8DEE9'
  set t black

  switch $fish_bind_mode
    case default
      bg_fg $t $b
      echo -n ""
      bg_fg $b yellow
      echo ' [N] '
    case insert
      bg_fg $t $b
      echo -n ""
      bg_fg $b green
      echo ' [I] '
    case replace_one
      bg_fg $t $b
      echo -n ""
      bg_fg $b magenta
      echo ' [R] '
    case visual
      bg_fg $t $b
      echo -n ""
      bg_fg $b blue
      echo ' [V] '
    case '*'
      set_color --bold red
      echo '?'
  end
  bg_fg black white
end

function fish_prompt
  set b '2E3440'
  set w 'D8DEE9'
  set t black

  bg_fg $b $w
  echo -n $USER
  bg_fg $b $b
  echo -n "█"
  bg_fg $w $b
  echo -n ""
  bg_fg $b $w
  echo -n ""
  bg_fg $w $b
  echo -n ""
  bg_fg $w $b
  echo -n " "
  echo -n $(prompt_pwd)
  echo -n " "
  bg_fg $t $w
  echo -n ""

  set branch $(fish_git_prompt)
  if test -n "$branch"
    bg_fg $b blue
    echo -n "   $(git rev-parse --abbrev-ref HEAD) "
    bg_fg $t $b
    echo -n ""
  end



  bg_fg black white
  echo " "
end

use_terminal_colors
configure_goldfish

set -U GDK_BACKEND wayland,x11
set -U QT_QPA_PLATFORM "wayland;xcb"

direnv hook fish | source
zoxide init fish | source
