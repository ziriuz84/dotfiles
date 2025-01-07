return {
  'tehdb/nvim-faker',
  event = 'VeryLazy',
  config = function()
    require('nvim-faker').setup {
      use_global_package = true, -- use gloabl npm package otherwise npx (default: false)
    }
  end,
}
