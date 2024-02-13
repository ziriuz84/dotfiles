return {
  {
    "olrtg/nvim-emmet",
    config = function()
      vim.keymap.set({ "n", "v" }, '<leader>ce', require('nvim-emmet').wrap_with_abbreviation)
    end,
    keys = {
      {
        "<leader>ce", "<cmd>lua require('nvim-emmet').wrap_with_abbreviation)<CR>", desc = "Emmet"
      }
    }
  },
}
