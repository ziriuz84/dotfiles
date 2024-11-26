return {
  'olrtg/nvim-emmet',
  event = 'VeryLazy',
  config = function()
    vim.keymap.set({ 'n', 'v' }, '<leader>e', require('nvim-emmet').wrap_with_abbreviation, { desc = 'Emmet' })
  end,
}
