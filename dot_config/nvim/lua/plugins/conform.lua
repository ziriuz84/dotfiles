return {
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        formatters_by_ft = {
          python = { "autoflake", "isort", "black", "autopep8" },
          php = { "php_cs_fixer" },
          go = { "gofmt", "goimports", "gomodifytags", "djlint" },
          rust = { "rustfmt" },
          javascript = { "prettier", "rustywind" },
          typescript = { "prettier", "rustywind" },
          json = { "fixjson", "prettier" },
          sh = { "beautysh", "shfmt" },
          blade = { "php_cs_fixer", "blade_formatter" },
          yaml = { "prettier", "yamlfmt", "yamlfix" },
        },
      }
      return opts
    end,
  },
}
