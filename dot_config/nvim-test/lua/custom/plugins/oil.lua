return {
  {
    'stevearc/oil.nvim',
    event = 'VeryLazy',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Open parent directory' }),
    },
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  }
}
