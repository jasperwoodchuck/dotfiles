hl.config({
    general = {
        gaps_in          = 2,
        gaps_out         = 6,

        border_size      = 2,

        col              = {
            active_border = {
                colors = {
                    "rgba(b7bdf8ee)",
                    "rgba(c6a0f6ee)",
                    "rgba(f5bde6ee)",
                },
                angle = 90,
            },
            inactive_border = "rgba(59595959)",
        },

        resize_on_border = false,

        allow_tearing    = false,

        layout           = "scrolling",
    },

    decoration = {
        rounding         = 0,
        rounding_power   = 1,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        blur             = {
            enabled  = true,
            size     = 1,
            passes   = 2,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})


hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({
    name        = "no-gaps-wtv1",
    match       = { float = false, workspace = "w[tv1]" },
    border_size = 0,
    rounding    = 0,
})

hl.window_rule({
    name        = "no-gaps-f1",
    match       = { float = false, workspace = "f[1]" },
    border_size = 0,
    rounding    = 0,
})
