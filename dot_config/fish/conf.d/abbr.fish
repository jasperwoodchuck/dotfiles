fish_add_path ~/.local/bin

abbr -a Rns "sudo pacman -Rns"
abbr -a Syu "sudo pacman -Syu"
abbr -a Ins "sudo pacman -S"

abbr -a edit "zed -r ."
abbr -a shrc "zed ~/.config/fish/config.fish"

abbr -a cp "cp -iv"
abbr -a mv "mv -iv"
abbr -a rm "rm -Iv"
abbr -a mkdir "mkdir -pv"

abbr -a grep "grep --color=auto"
abbr -a diff "diff --color=auto"

abbr -a cat "bat"

abbr -a ls "eza --group-directories-first"
abbr -a lt "eza --group-directories-first -T --git-ignore"
abbr -a la "eza --group-directories-first -a"
abbr -a ll "eza --group-directories-first -lah"
