return {

  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      {
        'L3MON4D3/LuaSnip',
        build = (function()
          -- Build Step is needed for regex support in snippets.
          -- This step is not supported in many windows environments.
          -- Remove the below condition to re-enable on windows.
          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
            return
          end
          return 'make install_jsregexp'
        end)(),
        dependencies = {
          -- `friendly-snippets` contains a variety of premade snippets.
          --    See the README about individual language/framework/plugin snippets:
          --    https://github.com/rafamadriz/friendly-snippets
          {
            'rafamadriz/friendly-snippets',
            config = function()
              require('luasnip.loaders.from_vscode').lazy_load()
            end,
          },
        },
      },
      'saadparwaiz1/cmp_luasnip',

      -- Adds other completion capabilities.
      --  nvim-cmp does not ship with all sources by default. They are split
      --  into multiple repos for maintenance purposes.
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'onsails/lspkind.nvim',
      -- 'hrsh7th/cmp-emoji',
      -- 'chrisgrieser/cmp-nerdfont',
      'roginfarrer/cmp-css-variables',
      'chrisgrieser/cmp_yanky',
      'SergioRibera/cmp-dotenv',
      -- 'ray-x/cmp-treesitter',
      -- 'ray-x/cmp-sql',
      -- 'lukas-reineke/cmp-rg',
    },
    config = function()
      -- See `:help cmp`
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      local hostname = vim.fn.hostname()
      luasnip.config.setup {}

      local lspkind = require 'lspkind'

      local source_mapping = {
        buffer = '[Buffer]',
        nvim_lsp = '[LSP]',
        nvim_lua = '[Lua]',
        cmp_tabnine = '[TN]',
        path = '[Path]',
        codeium = '[Code]',
      }

      if hostname == 'sirio-eeepc1015pn' then
        cmp.setup {
          snippet = {
            expand = function(args)
              luasnip.lsp_expand(args.body)
            end,
          },
          completion = { completeopt = 'menu,menuone,noinsert' },

          -- For an understanding of why these mappings were
          -- chosen, you will need to read `:help ins-completion`
          --
          -- No, but seriously. Please read `:help ins-completion`, it is really good!
          mapping = cmp.mapping.preset.insert {
            -- Select the [n]ext item
            ['<C-n>'] = cmp.mapping.select_next_item(),
            -- Select the [p]revious item
            ['<C-p>'] = cmp.mapping.select_prev_item(),

            -- Scroll the documentation window [b]ack / [f]orward
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),

            -- Accept ([y]es) the completion.
            --  This will auto-import if your LSP supports it.
            --  This will expand snippets if the LSP sent a snippet.
            ['<C-y>'] = cmp.mapping.confirm { select = true },

            -- If you prefer more traditional completion keymaps,
            -- you can uncomment the following lines
            --['<CR>'] = cmp.mapping.confirm { select = true },
            --['<Tab>'] = cmp.mapping.select_next_item(),
            --['<S-Tab>'] = cmp.mapping.select_prev_item(),

            -- Manually trigger a completion from nvim-cmp.
            --  Generally you don't need this, because nvim-cmp will display
            --  completions whenever it has completion options available.
            ['<C-Space>'] = cmp.mapping.complete {},

            -- Think of <c-l> as moving to the right of your snippet expansion.
            --  So if you have a snippet that's like:
            --  function $name($args)
            --    $body
            --  end
            --
            -- <c-l> will move you to the right of each of the expansion locations.
            -- <c-h> is similar, except moving you backwards.
            ['<C-l>'] = cmp.mapping(function()
              if luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
              end
            end, { 'i', 's' }),
            ['<C-h>'] = cmp.mapping(function()
              if luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
              end
            end, { 'i', 's' }),

            -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
            --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
          },
          sources = {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
            { name = 'path' },
            { name = 'crates' },
            { name = 'cmp_tabnine' },
            { name = 'vim-dadbod-completion' },
            -- { name = 'emoji' },
            -- { name = 'nerdfont' },
            { name = 'css-variables' },
            -- { name = 'cmp_yanky' },
            { name = 'dotenv' },
            -- { name = 'treesitter' },
            -- { name = 'sql' },
            -- { name = 'rg' },
          },
          formatting = {
            format = function(entry, vim_item)
              -- if you have lspkind installed, you can use it like
              -- in the following line:
              vim_item.kind = lspkind.symbolic(vim_item.kind, { mode = 'symbol' })
              vim_item.menu = source_mapping[entry.source.name]
              if entry.source.name == 'cmp_tabnine' then
                local detail = (entry.completion_item.labelDetails or {}).detail
                vim_item.kind = ''
                if detail and detail:find '.*%%.*' then
                  vim_item.kind = vim_item.kind .. ' ' .. detail
                end

                if (entry.completion_item.data or {}).multiline then
                  vim_item.kind = vim_item.kind .. ' ' .. '[ML]'
                end
              end
              local maxwidth = 80
              vim_item.abbr = string.sub(vim_item.abbr, 1, maxwidth)
              local highlights_info = require('colorful-menu').cmp_highlights(entry)

              -- if highlight_info==nil, which means missing ts parser, let's fallback to use default `vim_item.abbr`.
              -- What this plugin offers is two fields: `vim_item.abbr_hl_group` and `vim_item.abbr`.
              if highlights_info ~= nil then
                vim_item.abbr_hl_group = highlights_info.highlights
                vim_item.abbr = highlights_info.text
              end
              return vim_item
            end,
          },
        }
      else
        cmp.setup {
          snippet = {
            expand = function(args)
              luasnip.lsp_expand(args.body)
            end,
          },
          completion = { completeopt = 'menu,menuone,noinsert' },

          -- For an understanding of why these mappings were
          -- chosen, you will need to read `:help ins-completion`
          --
          -- No, but seriously. Please read `:help ins-completion`, it is really good!
          mapping = cmp.mapping.preset.insert {
            -- Select the [n]ext item
            ['<C-n>'] = cmp.mapping.select_next_item(),
            -- Select the [p]revious item
            ['<C-p>'] = cmp.mapping.select_prev_item(),

            -- Scroll the documentation window [b]ack / [f]orward
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),

            -- Accept ([y]es) the completion.
            --  This will auto-import if your LSP supports it.
            --  This will expand snippets if the LSP sent a snippet.
            ['<C-y>'] = cmp.mapping.confirm { select = true },

            -- If you prefer more traditional completion keymaps,
            -- you can uncomment the following lines
            --['<CR>'] = cmp.mapping.confirm { select = true },
            --['<Tab>'] = cmp.mapping.select_next_item(),
            --['<S-Tab>'] = cmp.mapping.select_prev_item(),

            -- Manually trigger a completion from nvim-cmp.
            --  Generally you don't need this, because nvim-cmp will display
            --  completions whenever it has completion options available.
            ['<C-Space>'] = cmp.mapping.complete {},

            -- Think of <c-l> as moving to the right of your snippet expansion.
            --  So if you have a snippet that's like:
            --  function $name($args)
            --    $body
            --  end
            --
            -- <c-l> will move you to the right of each of the expansion locations.
            -- <c-h> is similar, except moving you backwards.
            ['<C-l>'] = cmp.mapping(function()
              if luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
              end
            end, { 'i', 's' }),
            ['<C-h>'] = cmp.mapping(function()
              if luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
              end
            end, { 'i', 's' }),

            -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
            --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
          },
          sources = {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
            { name = 'path' },
            { name = 'codeium' },
            { name = 'crates' },
            { name = 'cmp_tabnine' },
            { name = 'vim-dadbod-completion' },
            -- { name = 'emoji' },
            -- { name = 'nerdfont' },
            { name = 'css-variables' },
            -- { name = 'cmp_yanky' },
            { name = 'dotenv' },
            -- { name = 'treesitter' },
            -- { name = 'sql' },
            -- { name = 'rg' },
          },
          formatting = {
            format = function(entry, vim_item)
              -- if you have lspkind installed, you can use it like
              -- in the following line:
              vim_item.kind = lspkind.symbolic(vim_item.kind, { mode = 'symbol' })
              vim_item.menu = source_mapping[entry.source.name]
              if entry.source.name == 'cmp_tabnine' then
                local detail = (entry.completion_item.labelDetails or {}).detail
                vim_item.kind = ''
                if detail and detail:find '.*%%.*' then
                  vim_item.kind = vim_item.kind .. ' ' .. detail
                end

                if (entry.completion_item.data or {}).multiline then
                  vim_item.kind = vim_item.kind .. ' ' .. '[ML]'
                end
              end
              local maxwidth = 80
              vim_item.abbr = string.sub(vim_item.abbr, 1, maxwidth)
              local highlights_info = require('colorful-menu').cmp_highlights(entry)

              -- if highlight_info==nil, which means missing ts parser, let's fallback to use default `vim_item.abbr`.
              -- What this plugin offers is two fields: `vim_item.abbr_hl_group` and `vim_item.abbr`.
              if highlights_info ~= nil then
                vim_item.abbr_hl_group = highlights_info.highlights
                vim_item.abbr = highlights_info.text
              end
              return vim_item
            end,
          },
        }
      end
    end,
  },
}
