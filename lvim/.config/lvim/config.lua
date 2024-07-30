vim.wo.relativenumber = true
lvim.colorscheme = "candyland";
lvim.transparent_window = true
vim.api.nvim_create_augroup("lvim_user", {})
lvim.autocommands = {
  {
    { "BufEnter", "BufWinEnter" },
    {
      group = "lvim_user",
      pattern = "*.cpp",
      command = "setlocal ts=4 sw=4",
    },
  },
  -- {
  -- { "ColorScheme" },
    -- {
      -- pattern = "*",
      -- callback = function()
        -- change `Normal` to the group you want to change
        -- and `#ffffff` to the color you want
        -- see `:h nvim_set_hl` for more options
        -- vim.api.nvim_set_hl(0, "Keyword", { fg = "#ff9aef", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Conditional", { fg = "#ff9aef", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Repeat", { fg = "#ff9aef", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Operator", { fg = "#ff9aef", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Constant", { fg = "#ff8994", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "@parameter", { fg = "#ff8994", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Boolean", { fg = "#ff8994", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#ff8994", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Number", { fg = "#ff8994", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Function", { fg = "#6ea2f7", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Type", { fg = "#85DFF8", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Structure", { fg = "#85DFF8", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "@field", { fg = "#85DFF8", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "@property", { fg = "#85DFF8", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Special", { fg = "#85DFf8", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "String", { fg = "#ffcfe8", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Delimiter", { fg = "#ffbfe7", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "#ffbfe8", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#df78d8", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Macro", { fg = "#df71e6", underline = false, bold = true })
        -- vim.api.nvim_set_hl(0, "Variable", { fg = "#f2e1d1", underline = false, bold = true })

      -- end,
    -- },
  -- },
}


lvim.plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {"L3MON4D3/LuaSnip"},
  {"rktjmp/lush.nvim"},
  -- { dir = '/home/amber/dev/colorschemes/candyland'},
  { 'AmberLehmann/candyland.nvim', priority = 1000},
  { 'simrat39/rust-tools.nvim' },
  {"rktjmp/shipwright.nvim"},
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
    require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
        '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,        -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,              -- Function to run after the scrolling animation ends
        })
    end
  },
  {
    "folke/twilight.nvim",
    opts = {
            -- your configuration comes here
      -- or leave it empty to use the default settings
      dimming = {
      alpha = 0.45, -- amount of dimming
      -- we try to get the foreground from the highlight groups or fallback color
      color = { "Normal", "#ffffff" },
      term_bg = "#000010", -- if guibg=NONE, this will be used to calculate text color
      inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
      },
      context = 15, -- amount of lines we will try to show around the current line
      treesitter = true, -- use treesitter when available for the filetype
      -- treesitter is used to automatically expand the visible text,
      -- but you can further control the types of nodes that should always be fully expanded
      expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
        "function",
        "method",
        "table",
        "if_statement",
      },
      exclude = {}, -- exclude these filetypes
-- refer to the configuration section below
    }
  },
  {'ThePrimeagen/vim-be-good'},
  {'eandrju/cellular-automaton.nvim'},
  {'rust-lang/rust.vim'},
}

-- vim.keymap.set("n", "<leader>m", "<cmd>CellularAutomaton make_it_rain<CR>")

lvim.builtin.which_key.mappings["Fml"] = {
  "<cmd>CellularAutomaton make_it_rain<CR>", "n"
}

lvim.builtin.which_key.mappings["t"] = {
  "<cmd>Twilight<CR>", "n"
}
