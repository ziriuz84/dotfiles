return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>H"] = { name = "+Harpoon" },
      },
    },
  },
  {
    "ThePrimeagen/harpoon",
    event = "VeryLazy",
    keys = {
      {
        "<leader>Ha",
        "<cmd>lua require('harpoon.mark').add_file()<CR>",
        desc = "Add to Harpoon",
      },
      { "<leader>HH", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Open Harpoon" },
    },
  },
}
