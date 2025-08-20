return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    styles = {
      terminal = {
        position = 'float',
        boarder = 'rounded',
      },
      lazygit = {
        width = 0,
        height = 0,
      },
    },
  },
  keys = {
    {
      '<leader>se',
      function()
        Snacks.picker.explorer()
      end,
      desc = 'search file explorer',
    },
    {
      '<C-\\>',
      function()
        Snacks.terminal.toggle()
      end,
      desc = 'Toggle terminal',
    },
    {
      '<leader>lg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Toggle terminal',
    },
  },
}
