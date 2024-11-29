return {
  {
    'mistricky/codesnap.nvim',
    event = 'VeryLazy',
    build = 'make',
    config = function()
      require('codesnap').setup { has_number = true, watermark = 'By Sirio Negri' }
    end,
  },
}
