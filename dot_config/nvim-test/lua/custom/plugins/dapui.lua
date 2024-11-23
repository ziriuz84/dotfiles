return {
  "rcarriga/nvim-dap-ui",
  event = "VeryLazy",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
  config = function()
    require("dapui").setup()
    vim.keymap.set("n", "<leader>Xu", require("dapui").toggle, { desc = "Toggle DAP UI" })
    vim.keymap.set("n", "<leader>Xb", require("dap").toggle_breakpoint, { desc = "Toggle Breakpoint" })
    vim.keymap.set("n", "<leader>Xc", require("dap").continue, { desc = "Continue execution" })
    vim.keymap.set("n", "<leader>Xo", require("dap").step_over, { desc = "Step over" })
    vim.keymap.set("n", "<leader>Xi", require("dap").step_into, { desc = "Step into" })
  end
}
