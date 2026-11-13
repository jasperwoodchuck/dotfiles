local suppressMaximizeRule = hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

suppressMaximizeRule:set_enabled(false)

-- hl.config({
--     xwayland = {
--         enabled = false,
--     },
-- })

hl.window_rule({
    name = "PIP",
    match = {
        title = "Picture-in-Picture",
    },
    float = true,
    pin = true,
})
