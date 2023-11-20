return {
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        formatters_by_ft = {
          python = { "autoflake", "isort", "black", "autopep8" },
          php = { "php-cs-fixer" },
          go = { "gofmt", "goimports", "gomodifytags", "djlint" },
          rust = { "rustfmt" },
          javascript = { "prettier", "rustywind" },
          typescript = { "prettier", "rustywind" },
          JSON = { "fixjson", "prettier" },
          sh = { "beautysh", "shfmt" },
          blade = { "php-cs-fixer", "blade-formatter" },
          YAML = { "prettier", "yamlfmt", "yamlfix" },
        },
      }
      return opts
    end,
  },
}
