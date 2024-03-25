return {
  {
    "stevearc/conform.nvim",
    event = "VeryLazy",
    opts = function()
      local opts = {
        formatters_by_ft = {
          python = { "autoflake", "isort", "black", "autopep8" },
          php = { "php-cs-fixer", "pint" },
          phtml = { "php-cs-fixer", "pint" },
          markdown = { "prettierd", "markdownlint", "markdown-toc", "vale" },
          go = { "gofmt", "goimports", "gomodifytags", "djlint" },
          rust = { "rustfmt" },
          javascript = { "biome", "rustywind" },
          typescript = { "biome", "rustywind" },
          html = { "prettierd", "rustywind" },
          json = { "fixjson", "prettierd" },
          sh = { "beautysh", "shfmt" },
          blade = { "blade-formatter" },
          yaml = { "prettierd", "yamlfmt", "yamlfix" },
          lua = { "stylua" },
          xml = { "xmlformatter" },
        },
        formatters = {
          php_cs_fixer = {
            prepend_args = { "--rules=PSR12" },
          },
        },
      }
      return opts
    end,
  },
}
