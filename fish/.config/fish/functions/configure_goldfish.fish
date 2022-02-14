function configure_goldfish
  # This can be ran in the terminal(no escape char for fish scripting)
  # cat ~/.config/goldfish/goldfish.config | fzf --preview-window="bottom:3:wrap" --preview="echo {} | awk -F ' <>< ' '{print \$2}' | fish_indent --ansi" | awk -F ' <>< ' '{print $2}'

  alias goldfish='cat ~/.config/goldfish/goldfish.config | fzf --preview-window="bottom:3:wrap" --preview="echo {} | awk -F \' <>< \' \'{print \$2}\' | fish_indent --ansi" | awk -F \' <>< \' \'{print $2}\''
  bind -M insert \eg fzf_search_goldfish
end


