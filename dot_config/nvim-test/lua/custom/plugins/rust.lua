return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false,   -- This plugin is already lazy
  },
  {
    'saecki/crates.nvim',
    tag = 'stable',
    event = { 'BufRead Cargo.toml' },
    opts = {
     completion = {
          crates = {
            enable = true,
          },
          cmp = {
            enable = true,
          }
        },
        lsp = {
          enable = true,
          actions = true,
          completion = true,
          hover = true
        },
        null_ls = {
          enable = true,
          name = 'crates.nvim'
        }
    },
    config = function()
      require('crates').setup() 
    end,
  },
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
}
