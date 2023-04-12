require('lualine').setup {
    options = {
        -- ... your other options
        section_separators = '',
        component_separators = '',
    },
    sections = {
        lualine_c = { {'buffers'} },
    },
}
