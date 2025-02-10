local treesiter = require 'nvim-treesitter.configs'
local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.blade = {
  install_info = {
    url = 'https://github.com/EmranMR/tree-sitter-blade',
    files = { 'src/parser.c' },
    branch = 'main',
  },
  filetype = 'blade',
}

vim.filetype.add {
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
}
local bladeGrp
vim.api.nvim_create_augroup('BladeFiltypeRelated', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.blade.php',
  group = bladeGrp,
  callback = function()
    vim.opt.filetype = 'blade'
  end,
})
return {
  'ricardoramirezr/blade-nav.nvim',
  dependencies = { -- totally optional
    'hrsh7th/nvim-cmp', -- if using nvim-cmp
  },
  ft = { 'blade', 'php' }, -- optional, improves startup time
  opts = {
    close_tag_on_complete = true, -- default: true
  },
}
