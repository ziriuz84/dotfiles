return {
  {
    'Exafunction/codeium.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      local hostname = vim.fn.hostname()
      if hostname == 'sirio-eeepc1015pn' then
        vim.notify 'Codeium disabled'
      else
        vim.notify 'Codeium enabled'
        require('codeium').setup {
          enable_chat = true,
        }
      end
    end,
  },
}
