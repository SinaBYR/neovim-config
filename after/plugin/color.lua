require('onedark').setup({
    style = 'deep',          -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
    transparent = true,      -- matches your existing transparent-background setup
    term_colors = true,
    ending_tildes = false,
    cmp_itemkind_reverse = false,

    -- toggle between styles with a keybind if you want to compare quickly
    toggle_style_key = nil,          -- e.g. '<leader>ts' to enable
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},

    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none',
    },

    lualine = {
        transparent = false,
    },

    colors = {},       -- override or add palette colors here

		highlights = {
			TSKeyword = { fg = '$green' },
			TSString = { fg = '$orange', fmt = 'bold' },
			['@field'] = { fg = '$yellow' },
		},

    diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
    },
})

require('onedark').load()
