require('catppuccin').setup({
	flavour = 'mocha',
	no_italic = true,
	show_end_of_buffer = true,

    color_overrides = {
        mocha = {
            base = "#070711",
            mantle = "#070711",
            crust = "#070711",
        },
    },
    highlight_overrides = {
        mocha = function(c)
            return {
                MiniTrailspace = { bg = c.red },
            }
        end,
    },
})

vim.cmd.colorscheme('catppuccin')
