return {
  'jonroosevelt/gemini.nvim',
  enabled = false,
  event = 'VeryLazy',
  config = function()
    require('gemini').setup()
  end,
}
