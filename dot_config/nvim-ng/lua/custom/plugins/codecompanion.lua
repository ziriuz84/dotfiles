return {
  'olimorris/codecompanion.nvim',
  opts = {},
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'ravitemer/mcphub.nvim',
  },
  config = function()
    require('codecompanion').setup {
      adapters = {
        http = {
          anthropic = function()
            return require('codecompanion.adapters').extend('anthropic', {
              env = {
                api_key = 'CLAUDE_API_KEY',
              },
            })
          end,
        },
      },
      extensions = {
        mcphub = {
          callback = 'mcphub.extensions.codecompanion',
          opts = {
            -- MCP Tools
            make_tools = true, -- Make individual tools (@server__tool) and server groups (@server) from MCP servers
            show_server_tools_in_chat = true, -- Show individual tools in chat completion (when make_tools=true)
            add_mcp_prefix_to_tool_names = false, -- Add mcp__ prefix (e.g `@mcp__github`, `@mcp__neovim__list_issues`)
            show_result_in_chat = true, -- Show tool results directly in chat buffer
            format_tool = nil, -- function(tool_name:string, tool: CodeCompanion.Agent.Tool) : string Function to format tool names to show in the chat buffer
            -- MCP Resources: off until mcphub supports CodeCompanion without `config.interactions.chat.variables` (Nvim 0.12 / recent CC)
            make_vars = false,
            -- MCP Prompts
            make_slash_commands = true, -- Add MCP prompts as /slash commands
          },
        },
      },
      strategies = {
        chat = {
          adapter = {
            name = 'anthropic',
            model = 'claude-haiku-4-5',
          },
        },
        inline = {
          adapter = {
            name = 'anthropic',
            model = 'claude-haiku-4-5',
          },
        },
        cmd = {
          adapter = {
            name = 'anthropic',
            model = 'claude-haiku-4-5',
          },
        },
      },
    }
  end,
}
