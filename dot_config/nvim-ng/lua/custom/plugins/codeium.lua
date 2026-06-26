return {
  {
    'Exafunction/codeium.nvim',
    cond = function()
      local hostname = vim.loop.os_gethostname():gsub('\n$', '')
      return hostname ~= 'sirio-eeepc1015pn'
    end,
    event = 'InsertEnter',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('codeium').setup {
        enable_chat = true,
      }
    end,
  },
}
