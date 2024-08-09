-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "php", "yaml", "yml" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "md", "markdown" },
  callback = function()
    vim.o.textwidth = 80
    vim.opt.spelllang = { "en", "it" }
  end,
})

local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

-- Configure it
configs.blade = {
  default_config = {
    -- Path to the executable: laravel-dev-generators
    cmd = { "/home/sirio/bin/laravel-dev-tools/laravel-dev-tools", "lsp" },
    filetypes = { "blade" },
    root_dir = function(fname)
      return lspconfig.util.find_git_ancestor(fname)
    end,
    settings = {},
  },
}
-- Set it up
lspconfig.blade.setup({
  -- Capabilities is specific to my setup.
  capabilities = capabilities,
})
