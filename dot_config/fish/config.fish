status is-interactive; or return

if command -q fastfetch; and isatty stdout
    fastfetch -c examples/27
end

set -U fish_history fish
set -g fish_prompt_pwd_dir_length 0
set -g fish_greeting
