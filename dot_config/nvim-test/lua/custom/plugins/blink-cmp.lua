return {
  { 'saghen/blink.compat' },
  {
    'saghen/blink.cmp',
    lazy = false, -- lazy loading handled internally
    -- optional: provides snippets for the snippet source
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      { 'saghen/blink.compat', opts = { impersonate_nvim_cmp = true } },
    },

    -- use a release tag to download pre-built binaries
    version = 'v0.*',
    -- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' for mappings similar to built-in completion
      -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
      -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
      -- see the "default configuration" section below for full documentation on how to define
      -- your own keymap.
      keymap = { preset = 'default' },

      accept = {
        expand_snippet = function(snippet)
          require('luasnip').lsp_expand(snippet.body)
        end,
        auto_brackets = { enabled = true },
      },

      highlight = {
        -- sets the fallback highlight groups to nvim-cmp's highlight groups
        -- useful for when your theme doesn't support blink.cmp
        -- will be removed in a future release, assuming themes add support
        use_nvim_cmp_as_default = true,
      },
      -- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono',

      -- default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, via `opts_extend`
      sources = {
        completion = {
          enabled_providers = { 'lsp', 'path', 'snippets', 'buffer', 'luasnip', 'dadbod' },
        },
      },

      providers = {
        luasnip = {
          name = 'luasnip',
          module = 'blink.compat.source',
          score_offset = -3,
          opts = {
            use_show_condition = false,
            show_autosnippets = true,
          },
        },
        dadbod = { name = 'Dadbod', module = 'vim_dadbod_completion.blink' },
      },

      -- experimental signature help support
      trigger = { signature_help = { enabled = true } },
    },
    -- allows extending the enabled_providers array elsewhere in your config
    -- without having to redefine it
    opts_extend = { 'sources.completion.enabled_providers' },
  },

  -- LSP servers and clients communicate what features they support through "capabilities".
  --  By default, Neovim support a subset of the LSP specification.
  --  With blink.cmp, Neovim has *more* capabilities which are communicated to the LSP servers.
  --  Explanation from TJ: https://youtu.be/m8C0Cq9Uv9o?t=1275
  --
  -- This can vary by config, but in general for nvim-lspconfig:

  {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    config = function(_, opts)
      local lspconfig = require 'lspconfig'
      for server, config in pairs(opts.servers or {}) do
        config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
    end,
  },
}
