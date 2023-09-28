-- require("catppuccin").setup({
--     flavour = "mocha", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--     },
--     transparent_background = false, -- disables setting the background color.
--     show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--     term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--     dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.15, -- percentage of the shade to apply to the inactive window
--     },
--     no_italic = false, -- Force no italic
--     no_bold = false, -- Force no bold
--     styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { "italic" }, -- Change the style of comments
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--     },
-- 		color_overrides = {
-- 			mocha = {
-- 				base = "#000000",
-- 				mantle = "#000000",
-- 				crust = "#000000",
-- 			},
-- 		},
--     integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         notify = false,
--         mini = false,
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
-- })


require("tokyodark").setup({
	transparent_background = false, -- set background to transparent
	gamma = 1.00, -- adjust the brightness of the theme
	styles = {
		comments = { italic = true }, -- style for comments
		keywords = { italic = true }, -- style for keywords
		identifiers = { italic = true }, -- style for identifiers
		functions = {}, -- style for functions
		variables = {}, -- style for variables
	},
	custom_highlights = {} or function(highlights, palette) return {} end, -- extend highlights
	custom_palette = {} or function(palette) return {} end, -- extend palette
	terminal_colors = true, -- enable terminal colors
})

vim.cmd.colorscheme "tokyodark"

-- setup must be called before loading
-- vim.cmd.colorscheme "catppuccin"

