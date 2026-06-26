local is_eeepc = vim.fn.hostname() == 'sirio-eeepc1015pn'

local ai_source = is_eeepc and { name = 'cmp_tabnine' } or { name = 'codeium' }

return {
  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {
        'L3MON4D3/LuaSnip',
        build = (function()
          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
            return
          end
          return 'make install_jsregexp'
        end)(),
        dependencies = {
          {
            'rafamadriz/friendly-snippets',
            config = function()
              require('luasnip.loaders.from_vscode').lazy_load()
            end,
          },
        },
      },
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'onsails/lspkind.nvim',
      'roginfarrer/cmp-css-variables',
      'SergioRibera/cmp-dotenv',
    },
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      local lspkind = require 'lspkind'
      luasnip.config.setup {}

      local source_mapping = {
        buffer = '[Buffer]',
        nvim_lsp = '[LSP]',
        nvim_lua = '[Lua]',
        cmp_tabnine = '[TN]',
        path = '[Path]',
        codeium = '[Code]',
        lazydev = '[LuaDev]',
        dotenv = '[Env]',
        ['css-variables'] = '[CSS]',
        ['vim-dadbod-completion'] = '[DB]',
        crates = '[Crates]',
      }

      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = { completeopt = 'menu,menuone,noinsert' },
        mapping = cmp.mapping.preset.insert {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-y>'] = cmp.mapping.confirm { select = true },
          ['<C-Space>'] = cmp.mapping.complete {},
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
        },
        sources = {
          { name = 'lazydev', group_index = 0 },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'crates' },
          ai_source,
          { name = 'vim-dadbod-completion' },
          { name = 'css-variables' },
          { name = 'dotenv' },
        },
        formatting = {
          format = function(entry, vim_item)
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
            if highlights_info ~= nil then
              vim_item.abbr_hl_group = highlights_info.highlights
              vim_item.abbr = highlights_info.text
            end
            return vim_item
          end,
        },
      }
    end,
  },
}
