return {
  'duqcyxwd/stringbreaker.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('string-breaker').setup()
  end,
}
