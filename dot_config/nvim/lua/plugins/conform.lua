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
          javascript = { "biome", "rustywind" },
          typescript = { "biome", "rustywind" },
          html = { "prettierd", "rustywind" },
          json = { "fixjson", "prettierd" },
          sh = { "beautysh", "shfmt" },
          blade = { "php_cs_fixer", "blade_formatter" },
          yaml = { "prettierd", "yamlfmt", "yamlfix" },
        },
      }
      return opts
    end,
  },
}
