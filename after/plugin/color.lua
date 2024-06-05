-- require("catppuccin").setup({
-- 	 flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 	 background = { -- :h background
-- 			 light = "latte",
-- 			 dark = "mocha",
-- 	 },
-- 	 transparent_background = true, -- disables setting the background color.
-- 	 show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
-- 	 term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
-- 	 dim_inactive = {
-- 			 enabled = false, -- dims the background color of inactive window
-- 			 shade = "dark",
-- 			 percentage = 0.15, -- percentage of the shade to apply to the inactive window
-- 	 },
-- 	 no_italic = false, -- Force no italic
-- 	 no_bold = false, -- Force no bold
-- 	 styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
-- 			 comments = { "italic" }, -- Change the style of comments
-- 			 conditionals = { "italic" },
-- 			 loops = {},
-- 			 functions = {},
-- 			 keywords = {},
-- 			 strings = {},
-- 			 variables = {},
-- 			 numbers = {},
-- 			 booleans = {},
-- 			 properties = {},
-- 			 types = {},
-- 			 operators = {},
-- 	 },
-- 	color_overrides = {
-- 		mocha = {
-- 			base = "#000000",
-- 			mantle = "#000000",
-- 			crust = "#000000",
-- 		},
-- 	},
-- 	 integrations = {
-- 			 cmp = true,
-- 			 gitsigns = true,
-- 			 nvimtree = true,
-- 			 treesitter = true,
-- 			 notify = false,
-- 			 mini = false,
-- 			 -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
-- 	 },
-- })
-- 
-- vim.cmd("colorscheme catppuccin")

-- require("tokyodark").setup({
-- 	transparent_background = true, -- set background to transparent
-- 	gamma = 1.00, -- adjust the brightness of the theme
-- 	styles = {
-- 		comments = { italic = true }, -- style for comments
-- 		keywords = { italic = true }, -- style for keywords
-- 		identifiers = { italic = true }, -- style for identifiers
-- 		functions = {}, -- style for functions
-- 		variables = {}, -- style for variables
-- 	},
-- 	custom_highlights = {} or function(highlights, palette) return {} end, -- extend highlights
-- 	custom_palette = {} or function(palette) return {} end, -- extend palette
-- 	terminal_colors = true, -- enable terminal colors
-- })
-- 
-- vim.cmd("colorscheme tokyodark")

require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})

-- vim.cmd("colorscheme tokyonight")

require('kanagawa').setup({
	transparent = true,
})
vim.cmd("colorscheme kanagawa-wave")

vim.cmd('hi LineNr guibg=NONE')
vim.cmd("hi SignColumn guibg=NONE")

-- gitsigns highlight groups
vim.cmd("hi GitSignsAdd guibg=NONE")
vim.cmd("hi GitSignsChange guibg=NONE")
vim.cmd("hi GitSignsDelete guibg=NONE")

-- fold column color
vim.cmd("hi FoldColumn guibg=NONE")

-- setup must be called before loading

