return {
  {
    'mistricky/codesnap.nvim',
    build = 'make',
    config = function()
      require('codesnap').setup { has_number = true, watermark = 'By Sirio Negri' }
    end,
  },
}
