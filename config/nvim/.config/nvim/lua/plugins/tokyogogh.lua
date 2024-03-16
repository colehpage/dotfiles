require('tokyogogh').setup {
    style = 'night', -- storm | night
    term_colors = true,
    -- Change code styles
    code_styles = {
        strings = {
            italic = false,
            bold = false
        },
        comments = {
            italic = true,
            bold = false
        },
        functions = {
            italic = false,
            bold = false
        },
        variables = {
            italic = false,
            bold = false
        }
    },
    diagnostics = {
        undercurl = true, -- use undercurl instead of underline
        background = true
    },
    -- Customization
    colors = {},
    highlight = {}
}
