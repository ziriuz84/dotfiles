return {
  'tpope/vim-sleuth',
  require 'plugins.colorscheme',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.conform',
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = true } },
  require 'plugins.mini',
  require 'plugins.treesitter',
}
