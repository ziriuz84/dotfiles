return {
  {
    'jackMort/ChatGPT.nvim',
    event = 'VeryLazy',
    config = function()
      require('chatgpt').setup {
        api_key_cmd = 'cat $HOME/Nextcloud/openai',
        openai_params = {
          model = 'gpt-4o-mini',
        },
      }
      local wk = require 'which-key'
      wk.add {
        { '<leader>C', group = 'ChatGPT', mode = { 'n', 'v' } },
        { '<leader>Cc', '<cmd>ChatGPT<cr>', desc = 'ChatGPT', mode = { 'n', 'v' } },
        { '<leader>Ce', '<cmd>ChatGPTEditWithInstructions<cr>', desc = 'ChatGPT Edit With Instructions', mode = { 'n', 'v' } },
        { '<leader>Cg', '<cmd>ChatGPTRun grammar_correction<cr>', desc = 'ChatGPT Grammar Correction', mode = { 'n', 'v' } },
        { '<leader>Ct', '<cmd>ChatGPTRun translate<cr>', desc = 'ChatGPT Translate', mode = { 'n', 'v' } },
        { '<leader>Cl', '<cmd>ChatGPTRun code_readability_analysis<cr>', desc = 'ChatGPT Code Readability Analysis', mode = { 'n', 'v' } },
        { '<leader>Ck', '<cmd>ChatGPTRun explain_code<cr>', desc = 'ChatGPT Explain Code', mode = { 'n', 'v' } },
        { '<leader>Ca', '<cmd>ChatGPTRun add_tests<cr>', desc = 'ChatGPT Add Tests', mode = { 'n', 'v' } },
        { '<leader>Co', '<cmd>ChatGPTRun optimize_code<cr>', desc = 'ChatGPT Optimize Code', mode = { 'n', 'v' } },
        { '<leader>Cd', '<cmd>ChatGPTRun docstring<cr>', desc = 'ChatGPT Docstring', mode = { 'n', 'v' } },
        { '<leader>Cs', '<cmd>ChatGPTRun summarize<cr>', desc = 'ChatGPT Summarize', mode = { 'n', 'v' } },
        { '<leader>Cf', '<cmd>ChatGPTRun fix_bugs<cr>', desc = 'ChatGPT Fix Bugs', mode = { 'n', 'v' } },
        { '<leader>Cr', '<cmd>ChatGPTRun roxygen_edit<cr>', desc = 'Roxygen Edit', mode = { 'n', 'v' } },
      }
    end,
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-lua/plenary.nvim',
      'folke/trouble.nvim', -- optional
      'nvim-telescope/telescope.nvim',
    },
  },
}
