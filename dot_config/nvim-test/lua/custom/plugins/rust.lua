return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
}
