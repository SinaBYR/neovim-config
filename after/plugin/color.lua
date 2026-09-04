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
 
			-- Barbar: give the active tab a real, solid background so it
			-- stands out against everything else (which stays transparent).
			BufferCurrent       = { fg = '$fg',        bg = '$bg2', fmt = 'bold' },
			BufferCurrentIndex  = { fg = '$blue',       bg = '$bg2' },
			BufferCurrentMod    = { fg = '$yellow',     bg = '$bg2', fmt = 'bold' },
			BufferCurrentSign   = { fg = '$blue',       bg = '$bg2' },
			BufferCurrentTarget = { fg = '$red',        bg = '$bg2', fmt = 'bold' },

			-- Visible-but-not-focused tabs (in a split): a step down from Current
			BufferVisible       = { fg = '$light_grey', bg = 'NONE' },
			BufferVisibleIndex  = { fg = '$light_grey', bg = 'NONE' },
			BufferVisibleMod    = { fg = '$dark_yellow',bg = 'NONE' },
			BufferVisibleSign   = { fg = '$grey',       bg = 'NONE' },

			-- Fully inactive tabs: dim, blends into transparent bg
			BufferInactive      = { fg = '$grey',       bg = 'NONE' },
			BufferInactiveIndex = { fg = '$grey',       bg = 'NONE' },
			BufferInactiveMod   = { fg = '$dark_yellow',bg = 'NONE' },
			BufferInactiveSign  = { fg = '$grey',       bg = 'NONE' },

			BufferAlternate     = { fg = '$light_grey', bg = 'NONE' },
			BufferAlternateSign = { fg = '$light_grey', bg = 'NONE' },

			BufferTabpages      = { fg = '$bg_d',       bg = '$blue', fmt = 'bold' },
			BufferTabpageFill   = { bg = 'NONE' },
		},

    diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
    },
})

require('onedark').load()
