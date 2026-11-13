local modules = {
    "animations",
    "autostart",
    "input",
    "keybinds",
    "monitors",
    "rules",
    "workspaces",
}

for _, module in ipairs(modules) do
    require("modules." .. module)
end
