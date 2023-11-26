return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>R"] = { name = "+Refactor" },
      },
    },
  },
  {
    "ThePrimeagen/refactoring.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      {
        "<leader>Re",
        function()
          require("refactoring").refactor("Extract Function")
        end,
        desc = "Extract",
        mode = { "v" },
      },
      {
        "<leader>Rf",
        function()
          require("refactoring").refactor("Extract Function To File")
        end,
        desc = "Extract to file",
        mode = { "v" },
      },
      {
        "<leader>Rv",
        function()
          require("refactoring").refactor("Extract Variable")
        end,
        desc = "Extract var",
        mode = { "v" },
      },
      {
        "<leader>Ri",
        function()
          require("refactoring").refactor("Inline Variable")
        end,
        desc = "Inline var",
        mode = { "n", "v" },
      },
      {
        "<leader>RI",
        function()
          require("refactoring").refactor("Inline Function")
        end,
        desc = "Inline func",
        mode = { "n" },
      },
      {
        "<leader>Rb",
        function()
          require("refactoring").refactor("Extract Block")
        end,
        desc = "Extract block",
        mode = { "v" },
      },
      {
        "<leader>RB",
        function()
          require("refactoring").refactor("Extract Block To File")
        end,
        desc = "Extract block to file",
        mode = { "v" },
      },
      {
        "<leader>Rt",
        function()
          require("telescope").extensions.refactoring.refactors()
        end,
        desc = "Refactor via Telescope",
        mode = { "v", "n" },
      },
    },
    config = function()
      require("telescope").load_extension("refactoring")
      require("refactoring").setup()
    end,
  },
}
