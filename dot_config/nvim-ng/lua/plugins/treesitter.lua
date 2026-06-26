local parsers = {
  'astro',
  'bash',
  'blade',
  'c',
  'css',
  'diff',
  'dockerfile',
  'html',
  'http',
  'javascript',
  'json',
  'lua',
  'luadoc',
  'markdown',
  'markdown_inline',
  'php',
  'python',
  'query',
  'scss',
  'tsx',
  'typescript',
  'vim',
  'vimdoc',
  'vue',
  'yaml',
}

return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup {}

    local installed = require('nvim-treesitter').get_installed()
    local to_install = vim.tbl_filter(function(p)
      return not vim.tbl_contains(installed, p)
    end, parsers)

    if #to_install > 0 then
      require('nvim-treesitter').install(to_install)
    end
  end,
}
