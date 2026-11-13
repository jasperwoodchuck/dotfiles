function fish_prompt
    set_color white
    echo -n (prompt_pwd)
    set_color normal

    echo
    set_color brmagenta
    echo -n "❯ "
    set_color normal
end
