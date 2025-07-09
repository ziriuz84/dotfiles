return {
  'olimorris/codecompanion.nvim',
  opts = {},
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'ravitemer/mcphub.nvim',
  },
  config = function()
    require('codecompanion').setup {
      strategies = {
        chat = {
          adapter = {
            name = 'openai',
            model = 'gpt-4o-mini',
          },
        },
        inline = {
          adapter = {
            name = 'openai',
            model = 'gpt-4o-mini',
          },
        },
        cmd = {
          adapter = {
            name = 'openai',
            model = 'gpt-4o-mini',
          },
        },
      },
    }
  end,
}
