return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>o"] = { name = "+Org-mode" },
      },
    },
  },
  {
    "nvim-orgmode/orgmode",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter", lazy = true },
    },
    event = "VeryLazy",
    config = function()
      -- Load treesitter grammar for org
      require("orgmode").setup_ts_grammar()

      -- Setup treesitter
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "org" },
        },
        ensure_installed = { "org" },
      })

      -- Setup orgmode
      require("orgmode").setup({
        org_agenda_files = "~/Nextcloud/orgfiles/**/*",
        org_default_notes_file = "~/Nextcloud/orgfiles/inbox.org",
        org_capture_templates = {
          t = {
            description = "Task",
            template = "* TODO %? :%(return os.time()): \n %u",
            target = "~/Nextcloud/orgfiles/todo.org",
          },
          n = {
            description = "Note",
            template = "* %?  :%(return os.time()): \n %u",
            target = "~/Nextcloud/orgfiles/inbox.org",
          },
        },
      })
    end,
  },
}
