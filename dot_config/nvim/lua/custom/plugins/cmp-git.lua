return {
  'petertriho/cmp-git',
  event = 'VeryLazy',
  dependencies = { 'hrsh7th/nvim-cmp' },
  opts = {
    -- options go here
  },
  init = function()
    table.insert(require('cmp').get_config().sources, { name = 'git' })
  end,
}
