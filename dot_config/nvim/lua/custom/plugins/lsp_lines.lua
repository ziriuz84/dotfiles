return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = 'VeryLazy',
  config = function()
    vim.diagnostic.config({
      virtual_text = false,
      virtual_lines = { only_current_line = true },
    })

    require("lsp_lines").setup()
  end,
}
