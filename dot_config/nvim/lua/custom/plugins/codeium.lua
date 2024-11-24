return {
  {
    'Exafunction/codeium.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      local hostname = vim.fn.hostname()
      if not hostname == 'sirio-eeepc1015pn' then
        require('codeium').setup {
          enable_chat = true,
        }
      end
    end,
  },
}
