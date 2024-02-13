return {
  {
    "stevearc/conform.nvim",
    event = "VeryLazy",
    opts = function()
      local opts = {
        formatters_by_ft = {
          python = { "autoflake", "isort", "black", "autopep8" },
          php = { "php-cs-fixer" },
          phtml = { "php-cs-fixer" },
          go = { "gofmt", "goimports", "gomodifytags", "djlint" },
          rust = { "rustfmt" },
          javascript = { "biome", "rustywind" },
          typescript = { "biome", "rustywind" },
          -- html = { "prettierd", "rustywind" },
          json = { "fixjson", "prettierd" },
          sh = { "beautysh", "shfmt" },
          blade = { "blade-formatter" },
          yaml = { "prettierd", "yamlfmt", "yamlfix" },
          lua = { "stylua" }
        },
      }
      return opts
    end,
  },
}
