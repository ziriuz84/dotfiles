return {
  pyright = {},
  arduino_language_server = {},
  astro = {},
  bashls = {},
  codeqlls = {},
  cssls = {},
  css_variables = {},
  emmet_language_server = {
    filetypes = { 'css', 'eruby', 'html', 'javascript', 'javascriptreact', 'less', 'sass', 'scss', 'pug', 'typescriptreact', 'php', 'phtml' },
    init_options = {
      includeLanguages = {},
      excludeLanguages = {},
      extensionsPath = {},
      preferences = {},
      showAbbreviationSuggestions = true,
      showExpandedAbbreviation = 'always',
      showSuggestionsAsSnippets = false,
      syntaxProfiles = {},
      variables = {},
    },
  },
  html = {},
  jsonls = {},
  marksman = {},
  tailwindcss = {},
  vimls = {},
  docker_compose_language_service = {},
  dockerls = {},
  yamlls = {},
  markdown_oxide = {},
  intelephense = {
    settings = {
      intelephense = {
        format = {
          enable = false,
        },
      },
    },
  },
  lua_ls = {
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  },
}
