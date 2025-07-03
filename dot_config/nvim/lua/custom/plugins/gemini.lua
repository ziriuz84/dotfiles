return {
  'jonroosevelt/gemini.nvim',
  event = 'VeryLazy',
  config = function()
    require('gemini').setup()
  end,
}
