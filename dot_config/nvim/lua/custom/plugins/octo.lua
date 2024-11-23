return {
  'pwntester/octo.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('octo').setup()
  end
}
