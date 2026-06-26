local workspaces = require 'config.workspaces'

return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local file_path = vim.fn.expand '%:p'
      if workspaces.matches_any(file_path, workspaces.no_format_patterns) then
        return false
      end

      local disable_filetypes = { c = true, cpp = true }
      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = 'never'
      else
        lsp_format_opt = 'fallback'
      end
      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      rust = { 'rustfmt' },
      python = { 'black', 'isort' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
      javascriptreact = { 'prettier' },
      html = { 'prettierd' },
      css = { 'prettierd' },
      scss = { 'prettierd' },
      json = { 'prettierd' },
      yaml = { 'prettierd' },
      astro = { 'prettier' },
      markdown = { 'prettierd' },
      graphql = { 'prettierd' },
      php = { 'php-cs-fixer', 'pint' },
      phtml = { 'php-cs-fixer', 'pint' },
      blade = { 'blade-formatter' },
      golang = { 'gofmt', 'goimports' },
    },
    formatters = {
      php_cs_fixer = {
        prepend_args = { '--rules=PSR12' },
      },
    },
  },
}
