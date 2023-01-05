-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sirio/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sirio/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sirio/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sirio/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sirio/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\2?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\2ñ\3\0\0\n\0\23\00166\0\0\0'\1\1\0B\0\2\0024\1\0\0006\2\2\0009\2\3\0029\2\4\0029\2\5\0029\2\6\2\15\0\2\0X\3\f€\21\2\1\0\22\2\0\0029\3\a\0006\4\b\0B\4\1\2'\5\t\0'\6\n\0'\a\v\0'\b\f\0'\t\r\0B\3\a\2<\3\2\0019\2\a\0006\3\14\0B\3\1\2'\4\15\0B\2\3\0029\3\16\0\18\4\2\0B\3\2\2\15\0\3\0X\4\3€\21\3\1\0\22\3\0\3<\2\3\0016\3\0\0'\4\17\0B\3\2\0029\3\18\3B\3\1\0016\3\0\0'\4\19\0B\3\2\0029\3\18\0035\4\20\0=\1\21\4B\3\2\0016\3\0\0'\4\22\0B\3\2\0029\3\18\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\22friendly_snippets\fsources\fluasnip\fbuiltin\tlvim\15lvim.utils\frequire\2\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bigfile.nvim"] = {
    config = { "\27LJ\2\2S\0\0\2\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\1\0019\1\2\1B\0\2\1K\0\1\0\fbuiltin\tlvim\vconfig\fbigfile\frequire\30\1\0\2\0\2\0\0046\0\0\0003\1\1\0B\0\2\1K\0\1\0\0\npcall\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/bigfile.nvim",
    url = "https://github.com/lunarvim/bigfile.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2B\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    cond = { "\27LJ\2\2†\1\0\0\3\0\a\0\0206\0\0\0009\0\1\0'\1\2\0B\0\2\0029\1\3\0)\2\17\0\3\2\1\0X\1\b€9\1\3\0)\2\21\0\1\1\2\0X\1\4€6\1\4\0009\1\5\0019\1\6\1X\2\3€+\1\1\0X\2\1€+\1\2\0L\1\2\0\22time_based_themes\fbuiltin\tlvim\thour\a*t\tdate\aos\0" },
    config = { "\27LJ\2\2r\0\0\2\0\6\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0!colorscheme catppuccin-mocha\bcmd\bvim\15catppuccin\15user.theme\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["clangd_extensions.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\ruser.cle\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/clangd_extensions.nvim",
    url = "https://github.com/p00f/clangd_extensions.nvim"
  },
  ["cmake-tools.nvim"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\17cmake_config\ruser.cle\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/cmake-tools.nvim",
    url = "https://github.com/Civitasv/cmake-tools.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-latex-symbols"] = {
    after_files = { "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/cmp-latex-symbols/after/plugin/cmp_latex.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/cmp-latex-symbols",
    url = "https://github.com/kdheepak/cmp-latex-symbols"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-tabnine"] = {
    after_files = { "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/cmp-tabnine/after/plugin/cmp-tabnine.lua" },
    config = { "\27LJ\2\2p\0\0\4\0\4\0\b6\0\0\0'\1\1\0B\0\2\2\18\2\0\0009\1\2\0005\3\3\0B\1\3\1K\0\1\0\1\0\3\20max_num_results\3\n\14max_lines\3è\a\tsort\2\nsetup\23cmp_tabnine.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["crates.nvim"] = {
    after_files = { "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/crates.nvim/after/plugin/cmp_crates.lua" },
    config = { "\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\16user.crates\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["csv.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/csv.vim",
    url = "https://github.com/chrisbra/csv.vim"
  },
  ["editorconfig-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\2B\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\24user.fidget_spinner\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["flutter-tools.nvim"] = {
    config = { "\27LJ\2\2A\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\23user.flutter_tools\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2@\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gopher.nvim"] = {
    config = { "\27LJ\2\2•\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\rcommands\1\0\0\1\0\5\timpl\timpl\fgotests\fgotests\niferr\niferr\ago\ago\17gomodifytags\17gomodifytags\nsetup\vgopher\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/gopher.nvim",
    url = "https://github.com/olexsmir/gopher.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\ruser.hop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["incline.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\17user.incline\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/incline.nvim",
    url = "https://github.com/b0o/incline.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\2C\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.indentlines\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["instant.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/instant.nvim",
    url = "https://github.com/jbyuki/instant.nvim"
  },
  ["kanagawa.nvim"] = {
    cond = { "\27LJ\2\2¦\1\0\0\3\0\a\0\0286\0\0\0009\0\1\0'\1\2\0B\0\2\0029\1\3\0)\2\21\0\3\2\1\0X\1\4€9\1\3\0)\2\24\0\0\1\2\0X\1\b€9\1\3\0)\2\0\0\3\2\1\0X\1\b€9\1\3\0)\2\1\0\1\1\2\0X\1\4€6\1\4\0009\1\5\0019\1\6\1X\2\3€+\1\1\0X\2\1€+\1\2\0L\1\2\0\22time_based_themes\fbuiltin\tlvim\thour\a*t\tdate\aos\0" },
    config = { "\27LJ\2\2h\0\0\2\0\6\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0\25colorscheme kanagawa\bcmd\bvim\rkanagawa\15user.theme\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-inlayhints.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19lsp-inlayhints\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/lsp-inlayhints.nvim",
    url = "https://github.com/lvimuser/lsp-inlayhints.nvim"
  },
  ["lsp_lines.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14lsp_lines\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/lsp_lines.nvim",
    url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\2A\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\23user/lsp_signature\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["lunar.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/lunar.nvim",
    url = "https://github.com/lunarvim/lunar.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.mason\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  neogen = {
    config = { "\27LJ\2\2D\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\fenabled\2\nsetup\vneogen\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/neogen",
    url = "https://github.com/danymat/neogen"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2A\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\ruser.bqf\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cheat.sh"] = {
    after = { "popfix" },
    commands = { "Cheat", "CheatWithoutComments", "CheatList", "CheatListWithoutComments" },
    config = { "\27LJ\2\2L\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\19vertical_split cheat_default_window_layout\6g\bvim\0" },
    keys = { { "", "<leader>?" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-cheat.sh",
    url = "https://github.com/RishabhRD/nvim-cheat.sh"
  },
  ["nvim-cmp"] = {
    after = { "tabout.nvim" },
    config = { "\27LJ\2\2`\0\0\2\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5€6\0\3\0'\1\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0" },
    loaded = true,
    only_config = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\19user.colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-cursorline"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lvim.core.dap\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-go"] = {
    config = { "\27LJ\2\0024\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vdap-go\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-dap-go",
    url = "https://github.com/leoluz/nvim-dap-go"
  },
  ["nvim-dap-python"] = {
    config = { "\27LJ\2\2Ù\1\0\0\4\0\f\0\0256\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\1'\2\4\0B\1\2\2'\2\5\0&\1\2\1B\0\2\0026\1\6\0'\2\a\0B\1\2\0029\1\b\1\18\2\0\0'\3\t\0&\2\3\2B\1\2\0016\1\6\0'\2\a\0B\1\2\2'\2\v\0=\2\n\1K\0\1\0\vpytest\16test_runner%packages/debugpy/venv/bin/python\nsetup\15dap-python\frequire\f/mason/\tdata\fstdpath\tglob\afn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-dap-python",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\2>\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rsetup_ui\18lvim.core.dap\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-vscode-js"] = {
    config = { "\27LJ\2\2£\2\0\0\4\0\14\0\0196\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0006\2\3\0009\2\4\0029\2\5\2'\3\6\0B\2\2\2'\3\a\0&\2\3\2=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\radapters\1\6\0\0\rpwa-node\15pwa-chrome\15pwa-msedge\18node-terminal\22pwa-extensionHost\17debugger_cmd\1\2\0\0\21js-debug-adapter\18debugger_path\1\0\0%/mason/packages/js-debug-adapter\tdata\fstdpath\afn\bvim\nsetup\18dap-vscode-js\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-dap-vscode-js",
    url = "https://github.com/mxsdev/nvim-dap-vscode-js"
  },
  ["nvim-jdtls"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    config = { "\27LJ\2\2C\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.breadcrumbs\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\17user.neoclip\frequire\0" },
    keys = { { "", "<leader>y" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\17user.spectre\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2@\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\2B\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["package-info.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17package-info\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/package-info.nvim",
    url = "https://github.com/vuki656/package-info.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\2Ã\1\0\0\5\0\f\0\0186\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0006\2\3\0009\2\4\0029\2\5\0026\3\6\0B\3\1\2'\4\a\0&\3\4\3B\2\2\2=\2\t\0015\2\n\0=\2\v\1B\0\2\1K\0\1\0\foptions\1\5\0\0\fbuffers\vcurdir\rtabpages\fwinsize\bdir\1\0\0\15/sessions/\18get_cache_dir\vexpand\afn\bvim\nsetup\16persistence\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  popfix = {
    load_after = {
      ["nvim-cheat.sh"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/popfix",
    url = "https://github.com/RishabhRD/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\2?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["refactoring.nvim"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\16refactoring\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["rose-pine"] = {
    cond = { "\27LJ\2\2†\1\0\0\3\0\a\0\0206\0\0\0009\0\1\0'\1\2\0B\0\2\0029\1\3\0)\2\1\0\3\2\1\0X\1\b€9\1\3\0)\2\t\0\1\1\2\0X\1\4€6\1\4\0009\1\5\0019\1\6\1X\2\3€+\1\1\0X\2\1€+\1\2\0L\1\2\0\22time_based_themes\fbuiltin\tlvim\thour\a*t\tdate\aos\0" },
    config = { "\27LJ\2\2j\0\0\2\0\6\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\14rose_pine\15user.theme\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\2>\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\20user.rust_tools\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["sidebar.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\17user.sidebar\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/sidebar.nvim",
    url = "https://github.com/sidebar-nvim/sidebar.nvim"
  },
  ["ssr.nvim"] = {
    config = { "\27LJ\2\2Ÿ\1\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\fkeymaps\1\0\4\15next_match\6n\15prev_match\6N\nclose\6q\16replace_all\17<leader><cr>\1\0\2\15min_height\3\5\14min_width\0032\nsetup\bssr\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/ssr.nvim",
    url = "https://github.com/cshuaimin/ssr.nvim"
  },
  ["structlog.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/structlog.nvim",
    url = "https://github.com/Tastyep/structlog.nvim"
  },
  ["swenv.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/swenv.nvim",
    url = "https://github.com/AckslD/swenv.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\2C\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\25user.symbols_outline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\16user.tabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-live-grep-args.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/telescope-live-grep-args.nvim",
    url = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2A\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2A\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\23user.todo_comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\2@\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "Trouble" },
    config = { "\27LJ\2\2{\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\5\14auto_open\2\vheight\3\n\15auto_close\2\25use_diagnostic_signs\2\fpadding\1\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\18user.twilight\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["typescript.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\ruser.tss\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/typescript.nvim",
    url = "https://github.com/jose-elias-alvarez/typescript.nvim"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\2B\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.illuminate\frequire\0" },
    loaded = true,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-log-highlighting"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/vim-log-highlighting",
    url = "https://github.com/mtdl9/vim-log-highlighting"
  },
  ["vim-matchup"] = {
    after_files = { "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    config = { "\27LJ\2\2Ã\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0K\0\1\0\1\0\1\vmethod\npopup!matchup_matchparen_offscreen matchup_matchparen_deferred\29matchup_surround_enabled\20matchup_enabled\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-test"] = {
    commands = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\18user.vim_test\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-ultest"] = {
    commands = { "Ultest", "UltestSummary", "UltestNearest" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/vim-ultest",
    url = "https://github.com/rcarriga/vim-ultest",
    wants = { "vim-test" }
  },
  vimtex = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2A\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\ruser.zen\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/sirio/.local/share/lunarvim/site/pack/packer/opt/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^neodev"] = "neodev.nvim",
  ["^persistence"] = "persistence.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.mason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2B\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: sidebar.nvim
time([[Config for sidebar.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\17user.sidebar\frequire\0", "config", "sidebar.nvim")
time([[Config for sidebar.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2C\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.indentlines\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: bigfile.nvim
time([[Config for bigfile.nvim]], true)
try_loadstring("\27LJ\2\2S\0\0\2\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0019\1\1\0019\1\2\1B\0\2\1K\0\1\0\fbuiltin\tlvim\vconfig\fbigfile\frequire\30\1\0\2\0\2\0\0046\0\0\0003\1\1\0B\0\2\1K\0\1\0\0\npcall\0", "config", "bigfile.nvim")
time([[Config for bigfile.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\2B\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\24user.fidget_spinner\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2A\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: lsp-inlayhints.nvim
time([[Config for lsp-inlayhints.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19lsp-inlayhints\frequire\0", "config", "lsp-inlayhints.nvim")
time([[Config for lsp-inlayhints.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\2>\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rsetup_ui\18lvim.core.dap\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2@\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-navic
time([[Config for nvim-navic]], true)
try_loadstring("\27LJ\2\2C\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.breadcrumbs\frequire\0", "config", "nvim-navic")
time([[Config for nvim-navic]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\2B\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.illuminate\frequire\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\2ñ\3\0\0\n\0\23\00166\0\0\0'\1\1\0B\0\2\0024\1\0\0006\2\2\0009\2\3\0029\2\4\0029\2\5\0029\2\6\2\15\0\2\0X\3\f€\21\2\1\0\22\2\0\0029\3\a\0006\4\b\0B\4\1\2'\5\t\0'\6\n\0'\a\v\0'\b\f\0'\t\r\0B\3\a\2<\3\2\0019\2\a\0006\3\14\0B\3\1\2'\4\15\0B\2\3\0029\3\16\0\18\4\2\0B\3\2\2\15\0\3\0X\4\3€\21\3\1\0\22\3\0\3<\2\3\0016\3\0\0'\4\17\0B\3\2\0029\3\18\3B\3\1\0016\3\0\0'\4\19\0B\3\2\0029\3\18\0035\4\20\0=\1\21\4B\3\2\0016\3\0\0'\4\22\0B\3\2\0029\3\18\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\22friendly_snippets\fsources\fluasnip\fbuiltin\tlvim\15lvim.utils\frequire\2\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lvim.core.dap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\2?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: incline.nvim
time([[Config for incline.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\17user.incline\frequire\0", "config", "incline.nvim")
time([[Config for incline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2A\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2`\0\0\2\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5€6\0\3\0'\1\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Conditional loads
time([[Conditional loading of rose-pine]], true)
  require("packer.load")({"rose-pine"}, {}, _G.packer_plugins)
time([[Conditional loading of rose-pine]], false)
time([[Conditional loading of catppuccin]], true)
  require("packer.load")({"catppuccin"}, {}, _G.packer_plugins)
time([[Conditional loading of catppuccin]], false)
time([[Conditional loading of kanagawa.nvim]], true)
  require("packer.load")({"kanagawa.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of kanagawa.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\16user.tabout\frequire\0", "config", "tabout.nvim")

vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'CheatList', function(cmdargs)
          require('packer.load')({'nvim-cheat.sh'}, { cmd = 'CheatList', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-cheat.sh'}, { cmd = 'CheatList' }, _G.packer_plugins)
          return vim.fn.getcompletion('CheatList ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Ultest', function(cmdargs)
          require('packer.load')({'vim-ultest'}, { cmd = 'Ultest', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-ultest'}, { cmd = 'Ultest' }, _G.packer_plugins)
          return vim.fn.getcompletion('Ultest ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CheatListWithoutComments', function(cmdargs)
          require('packer.load')({'nvim-cheat.sh'}, { cmd = 'CheatListWithoutComments', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-cheat.sh'}, { cmd = 'CheatListWithoutComments' }, _G.packer_plugins)
          return vim.fn.getcompletion('CheatListWithoutComments ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TestVisit', function(cmdargs)
          require('packer.load')({'vim-test'}, { cmd = 'TestVisit', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-test'}, { cmd = 'TestVisit' }, _G.packer_plugins)
          return vim.fn.getcompletion('TestVisit ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TestSuite', function(cmdargs)
          require('packer.load')({'vim-test'}, { cmd = 'TestSuite', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-test'}, { cmd = 'TestSuite' }, _G.packer_plugins)
          return vim.fn.getcompletion('TestSuite ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Cheat', function(cmdargs)
          require('packer.load')({'nvim-cheat.sh'}, { cmd = 'Cheat', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-cheat.sh'}, { cmd = 'Cheat' }, _G.packer_plugins)
          return vim.fn.getcompletion('Cheat ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TestNearest', function(cmdargs)
          require('packer.load')({'vim-test'}, { cmd = 'TestNearest', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-test'}, { cmd = 'TestNearest' }, _G.packer_plugins)
          return vim.fn.getcompletion('TestNearest ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TestLast', function(cmdargs)
          require('packer.load')({'vim-test'}, { cmd = 'TestLast', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-test'}, { cmd = 'TestLast' }, _G.packer_plugins)
          return vim.fn.getcompletion('TestLast ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'UltestSummary', function(cmdargs)
          require('packer.load')({'vim-ultest'}, { cmd = 'UltestSummary', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-ultest'}, { cmd = 'UltestSummary' }, _G.packer_plugins)
          return vim.fn.getcompletion('UltestSummary ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TestFile', function(cmdargs)
          require('packer.load')({'vim-test'}, { cmd = 'TestFile', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-test'}, { cmd = 'TestFile' }, _G.packer_plugins)
          return vim.fn.getcompletion('TestFile ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'UltestNearest', function(cmdargs)
          require('packer.load')({'vim-ultest'}, { cmd = 'UltestNearest', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-ultest'}, { cmd = 'UltestNearest' }, _G.packer_plugins)
          return vim.fn.getcompletion('UltestNearest ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CheatWithoutComments', function(cmdargs)
          require('packer.load')({'nvim-cheat.sh'}, { cmd = 'CheatWithoutComments', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-cheat.sh'}, { cmd = 'CheatWithoutComments' }, _G.packer_plugins)
          return vim.fn.getcompletion('CheatWithoutComments ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Trouble', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'Trouble', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, { cmd = 'Trouble' }, _G.packer_plugins)
          return vim.fn.getcompletion('Trouble ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <leader>y <cmd>lua require("packer.load")({'nvim-neoclip.lua'}, { keys = "<lt>leader>y", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <leader>? <cmd>lua require("packer.load")({'nvim-cheat.sh'}, { keys = "<lt>leader>?", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType objc ++once lua require("packer.load")({'clangd_extensions.nvim', 'cmake-tools.nvim'}, { ft = "objc" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'nvim-dap-vscode-js', 'refactoring.nvim', 'typescript.nvim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType log ++once lua require("packer.load")({'vim-log-highlighting'}, { ft = "log" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'clangd_extensions.nvim', 'refactoring.nvim', 'cmake-tools.nvim'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType java ++once lua require("packer.load")({'refactoring.nvim', 'nvim-jdtls'}, { ft = "java" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'refactoring.nvim', 'nvim-dap-python', 'swenv.nvim'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType csv ++once lua require("packer.load")({'csv.vim'}, { ft = "csv" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'nvim-dap-go', 'refactoring.nvim', 'gopher.nvim'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript.jsx ++once lua require("packer.load")({'nvim-dap-vscode-js', 'typescript.nvim'}, { ft = "javascript.jsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'cmp-latex-symbols', 'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'refactoring.nvim'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType dart ++once lua require("packer.load")({'flutter-tools.nvim'}, { ft = "dart" }, _G.packer_plugins)]]
vim.cmd [[au FileType objcpp ++once lua require("packer.load")({'clangd_extensions.nvim', 'cmake-tools.nvim'}, { ft = "objcpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType rs ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rs" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'nvim-dap-vscode-js', 'typescript.nvim'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType text ++once lua require("packer.load")({'vim-log-highlighting'}, { ft = "text" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'clangd_extensions.nvim', 'refactoring.nvim', 'cmake-tools.nvim'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-dap-vscode-js', 'refactoring.nvim', 'typescript.nvim'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType php ++once lua require("packer.load")({'refactoring.nvim'}, { ft = "php" }, _G.packer_plugins)]]
vim.cmd [[au FileType hpp ++once lua require("packer.load")({'clangd_extensions.nvim', 'cmake-tools.nvim'}, { ft = "hpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'nvim-dap-vscode-js', 'typescript.nvim'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType h ++once lua require("packer.load")({'clangd_extensions.nvim', 'cmake-tools.nvim'}, { ft = "h" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript.tsx ++once lua require("packer.load")({'nvim-dap-vscode-js', 'typescript.nvim'}, { ft = "typescript.tsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType gomod ++once lua require("packer.load")({'nvim-dap-go', 'gopher.nvim'}, { ft = "gomod" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-ts-context-commentstring', 'vim-matchup', 'ssr.nvim', 'symbols-outline.nvim'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'nvim-cursorline', 'toggleterm.nvim', 'bufferline.nvim', 'which-key.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter *_test.*,*_spec.*,*est_*.* ++once lua require("packer.load")({'vim-ultest'}, { event = "BufEnter *_test.*,*_spec.*,*est_*.*" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-dap-go', 'lsp_lines.nvim', 'twilight.nvim', 'refactoring.nvim', 'nvim-dap-python', 'nvim-spectre', 'zen-mode.nvim', 'swenv.nvim', 'lsp_signature.nvim', 'nvim-bqf', 'gitsigns.nvim', 'gopher.nvim', 'hop.nvim', 'editorconfig-vim', 'instant.nvim', 'todo-comments.nvim', 'Comment.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-colorizer.lua', 'package-info.nvim', 'nvim-dap-vscode-js', 'persistence.nvim', 'typescript.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufNew * ++once lua require("packer.load")({'nvim-dap-go', 'package-info.nvim', 'nvim-dap-vscode-js', 'nvim-dap-python', 'swenv.nvim', 'lsp_signature.nvim', 'typescript.nvim', 'ssr.nvim', 'gopher.nvim'}, { event = "BufNew *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'cmp-tabnine', 'neogen'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead Cargo.toml ++once lua require("packer.load")({'crates.nvim'}, { event = "BufRead Cargo.toml" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/csv.vim/ftdetect/csv.vim]], true)
vim.cmd [[source /home/sirio/.local/share/lunarvim/site/pack/packer/opt/csv.vim/ftdetect/csv.vim]]
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/csv.vim/ftdetect/csv.vim]], false)
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vim-log-highlighting/ftdetect/log.vim]], true)
vim.cmd [[source /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vim-log-highlighting/ftdetect/log.vim]]
time([[Sourcing ftdetect script at: /home/sirio/.local/share/lunarvim/site/pack/packer/opt/vim-log-highlighting/ftdetect/log.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
