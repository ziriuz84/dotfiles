return {
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        formatters_by_ft = {
          python = { "autoflake", "isort", "black", "autopep8", "docformatter" },
          php = { "php_cs_fixer" },
          go = { "gofmt", "goimports", "gomodifytags", "djlint" },
          rust = { "rustfmt" },
          javascript = { "prettierd", "rustywind", "biome" },
          typescript = { "prettierd", "rustywind", "biome" },
          json = { "fixjson", "prettierd", "biome" },
          sh = { "beautysh", "shfmt" },
          blade = { "php_cs_fixer", "blade_formatter" },
          yaml = { "prettierd", "yamlfmt", "yamlfix" },
          html = { "prettierd" },
          markdown = { "prettierd", "doctoc", "markdown-toc", "markdownlint" },
          lua = { "stylua" },
          css = { "prettierd" },
          scss = { "prettierd" },
        },
      }
      return opts
    end,
  },
}
