return {
  {
    'akinsho/git-conflict.nvim',
    event = 'BufReadPre',
    version = '*',
    opts = {
      default_mappings = true,
      default_commands = true,
      list_opener = 'copen',
    },
    keys = {
      { '<leader>hco', '<cmd>GitConflictChooseOurs<cr>', desc = 'git conflict [o]urs' },
      { '<leader>hct', '<cmd>GitConflictChooseTheirs<cr>', desc = 'git conflict [t]heirs' },
      { '<leader>hcb', '<cmd>GitConflictChooseBoth<cr>', desc = 'git conflict [b]oth' },
      { '<leader>hc0', '<cmd>GitConflictChooseNone<cr>', desc = 'git conflict n[0]ne' },
      { '[x', '<cmd>GitConflictPrevConflict<cr>', desc = 'previous git conflict' },
      { ']x', '<cmd>GitConflictNextConflict<cr>', desc = 'next git conflict' },
      { '<leader>hcl', '<cmd>GitConflictListQf<cr>', desc = 'git conflict [l]ist' },
    },
  },
}
