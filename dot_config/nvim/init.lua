-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.astro_typescript = "enable"

vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})
