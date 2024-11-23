return {
  'RREthy/vim-illuminate',
  event = 'VeryLazy',
  config = function()
    require('illuminate').configure()
  end
}
