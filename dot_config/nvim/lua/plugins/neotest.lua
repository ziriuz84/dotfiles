return {
  {
    "nvim-neotest/neotest",
    lazy = true,
    dependencies = {
      "olimorris/neotest-phpunit",
      "nvim-neotest/neotest-plenary",
      "rouge8/neotest-rust",
      "nvim-neotest/neotest-go",
      "nvim-neotest/neotest-python",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-phpunit"),
          require("neotest-plenary"),
          require("neotest-rust"),
          require("neotest-go"),
          require("neotest-python"),
        },
      })
    end,
  },
}
