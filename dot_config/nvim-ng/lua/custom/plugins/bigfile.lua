return {
  {
    'pteroctopus/faster.nvim',
    event = 'VeryLazy',
    config = function()
      require('faster').setup()
    end,
  },
}
