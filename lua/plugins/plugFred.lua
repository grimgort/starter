-- vim.cmd [[packadd packer.nvim]]
-- Load lua path
-- local lua_path = function(name)
--   return string.format('function() require("plugins.configs.%s").setup() end,', name)
-- end

-- return {
--
--   -- LSP
--   --
--   { "folke/neodev.nvim", config = lua_path("neodev") },
--   -- {
--   --  "folke/neoconf.nvim", config = lua_path("neoconf")
--   -- })
--   { "williamboman/mason.nvim", config = lua_path("mason") },
--   { "jose-elias-alvarez/null-ls.nvim", config = lua_path("null_ls") },
--   { "jayp0521/mason-null-ls.nvim", config = lua_path("mason_null_ls") },
--   { "WhoIsSethDaniel/mason-tool-installer.nvim" },
--   { "onsails/lspkind-nvim" },
--   { "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" },
--
--   -- Autocomplete
--   { "hrsh7th/nvim-cmp" },
--   { "hrsh7th/cmp-nvim-lsp" },
--   { "hrsh7th/cmp-nvim-lua" },
--   { "hrsh7th/cmp-buffer" },
--   --[[ { "hrsh7th/cmp-vsnip" }) ]]
--   --[[ { "hrsh7th/vim-vsnip" }) ]]
--   { "L3MON4D3/LuaSnip", tag = "*", config = lua_path("luasnip") },
--   { "saadparwaiz1/cmp_luasnip" },
--   { "hrsh7th/cmp-path" },
--   { "hrsh7th/cmp-calc" },
--   { "hrsh7th/cmp-cmdline" },
--   { "ray-x/cmp-treesitter" },
--   { "lukas-reineke/cmp-rg" },
--   { "quangnguyen30192/cmp-nvim-tags" },
--   { "rafamadriz/friendly-snippets" },
--   { "windwp/nvim-autopairs", config = lua_path("nvim-autopairs") },
--   { "windwp/nvim-ts-autotag", config = lua_path("nvim-ts-autotag") },
--   -- { "andymass/vim-matchup" },
--
--   -- Treesitter
--   {
--     "nvim-treesitter/nvim-treesitter",
--     run = ":TSUpdate",
--     config = lua_path("treesitter"),
--   },
--   { "mrjones2014/nvim-ts-rainbow", config = lua_path("nvim-ts-rainbow") },
--   { "lukas-reineke/indent-blankline.nvim", config = lua_path("indent-blankline") },
--   { "Darazaki/indent-o-matic" },
--   { "JoosepAlviste/nvim-ts-context-commentstring" },
--   { "lewis6991/nvim-treesitter-context" },
--   -- { "SmiteshP/nvim-gps", config = lua_path("nvim-gps") },
--   {
--     "SmiteshP/nvim-navic",
--     requires = "neovim/nvim-lspconfig",
--     config = lua_path("nvim-navic"),
--   },
--   --[[ use { 'fgheng/winbar.nvim', config = lua_path("winbar")} ]]
--
--   -- Syntax
--   --[[ { "chrisbra/csv.vim" }) ]]
--   --[[ { "junegunn/vim-easy-align" }) ]]
--   -- { "mhartington/formatter.nvim", config = lua_path("formatter") },
--   --[[ { "zdharma-continuum/zinit-vim-syntax" }) ]]
--   { "numToStr/Comment.nvim", config = lua_path("comment") },
--
--   -- Icons
--   -- { "kyazdani42/nvim-web-devicons" },
--   --[[ { "ryanoasis/vim-devicons" }) ]]
--
--   -- Status Line and Bufferline
--   { "famiu/feline.nvim", config = lua_path("feline") },
--   --
--   --[[ use { ]]
--   --[[   'nvim-lualine/lualine.nvim', ]]
--   --[[   requires = { 'kyazdani42/nvim-web-devicons', opt = true } ]]
--   --[[ , config = lua_path("lualine") } ]]
--   { "kazhala/close-buffers.nvim" },
--   --[[ { "noib3/nvim-cokeline", config = lua_path("nvim-cokeline") }) ]]
--
--   -- Telescope
--   --[[ { "nvim-lua/popup.nvim" }) ]]
--   { "nvim-lua/plenary.nvim" },
--   { "nvim-telescope/telescope.nvim", config = lua_path("telescope") },
--   --[[ { "nvim-telescope/telescope-fzy-native.nvim" }) ]]
--   {
--     "nvim-telescope/telescope-fzf-native.nvim",
--     run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
--   },
--   --[[ { "cljoly/telescope-repo.nvim" }) ]]
--   { "nvim-telescope/telescope-dap.nvim" },
--   --[[ { "pwntester/octo.nvim", config = lua_path("octo") }) ]]
--   -- Explorer
--   { "kyazdani42/nvim-tree.lua", commit = "08ab346", config = lua_path("nvimtree") },
--
--   -- Color
--   --[[ { "crivotz/nvim-colorizer.lua", config = lua_path("colorizer") }) ]]
--
--   -- Git
--   { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" }, config = lua_path("gitsigns") },
--   { "kdheepak/lazygit.nvim" },
--   --[[ { "rhysd/committia.vim" }) ]]
--
--   -- Registers & clipboard
--   --[[ { "AckslD/nvim-neoclip.lua", config = lua_path("nvim-neoclip") }) ]]
--
--   -- Move & Search & replace
--   { "nacro90/numb.nvim", config = lua_path("numb") },
--   --[[ { "dyng/ctrlsf.vim", config = lua_path("ctrlsf") }) ]]
--   --[[ { "kevinhwang91/nvim-hlslens", config = lua_path("hlslens") }) ]]
--   -- use { 'ggandor/lightspeed.nvim', config = lua_path"lightspeed" },
--   -- use { 'karb94/neoscroll.nvim', config = lua_path"neoscroll" },
--   --[[ { "dstein64/nvim-scrollview" }) ]]
--   -- { "chaoren/vim-wordmotion" },
--   --[[ { "fedepujol/move.nvim" }) ]]
--
--   -- Tim Pope docet
--   { "tpope/vim-fugitive" },
--
--   -- Folke
--   { "folke/trouble.nvim" },
--   { "folke/todo-comments.nvim", config = lua_path("todo-comments") },
--   -- {
--   --   "folke/which-key.nvim",
--   --   --[[ commit = "7d260629f7a7e9de6f80b31aa347e2c930925540", ]]
--   --   config = lua_path("which-key"),
--   -- },
--
--   -- Tmux
--   --[[ { "christoomey/vim-tmux-navigator" }) ]]
--
--   -- Colorschema
--   { "sainnhe/gruvbox-material" },
--   --[[ { "stevearc/dressing.nvim", config = lua_path("dressing") }) ]]
--
--   -- Tags
--   --[[ { "ludovicchabant/vim-gutentags", config = lua_path("vim-gutentags") }) ]]
--
--   -- -- Debugger
--   { "mfussenegger/nvim-dap", config = lua_path("nvim-dap") },
--   { "rcarriga/nvim-dap-ui", config = lua_path("nvim-dap-ui") },
--   { "theHamsta/nvim-dap-virtual-text", config = lua_path("nvim-dap-virtual-text") },
--   { "jay-babu/mason-nvim-dap.nvim", config = lua_path("mason-nvim-dap") },
--   -- -- General Plugins
--   -- --[[ { "machakann/vim-sandwich", config = lua_path("sandwich") }) ]]
--   { "rcarriga/nvim-notify", config = lua_path("nvim-notify") },
--   { "airblade/vim-rooter", config = lua_path("vim-rooter") },
--   -- { "goolord/alpha-nvim", config = lua_path("alpha-nvim") },
--   -- --[[ { "jeffkreeftmeijer/vim-numbertoggle" }) ]]
--   -- --[[ { "lambdalisue/suda.vim" }) ]]
--   -- --[[ { "wfxr/minimap.vim", config = lua_path("minimap") }) ]]
--   -- --[[ { "luukvbaal/stabilize.nvim", config = lua_path("stabilize") }) ]]
--   -- --[[ { "beauwilliams/focus.nvim", config = lua_path("focus") }) ]]
--   { "kevinhwang91/nvim-bqf", tag = "*" },
--
--   {
--     "windwp/nvim-spectre",
--     disable = disableVariable,
--     event = "BufRead",
--     config = lua_path("nvim-spectre"),
--   },
--   {
--     "andymass/vim-matchup",
--     disable = disableVariable,
--     -- tag = "*",
--     -- event = "CursorMoved",
--     -- config = function()
--     -- 	vim.g.matchup_matchparen_offscreen = { method = "popup" },
--     -- end,
--   },
--   {
--     "sindrets/diffview.nvim",
--     disable = disableVariable,
--     event = "BufRead",
--   },
--   -- replacde by :Gitsigns toggle_current_line_blame
--   -- {
--   -- 	"f-person/git-blame.nvim",
--   -- 	event = "BufRead",
--   -- 	config = function()
--   -- 		vim.cmd("highlight default link gitblame SpecialComment"
--   -- 		vim.g.gitblame_enabled = 0
--   -- 	end,
--   -- },
--   -- {
--   -- 	"tpope/vim-fugitive",
--   -- 	disable = disableVariable,
--   -- 	tag = "*",
--   -- 		},
--   { "ahmedkhalf/project.nvim", config = lua_path("project") },
--   -- { ]]
--   -- 	"nvim-telescope/telescope-project.nvim", ]]
--   -- 	--[[ disable = disableVariable, ]] ]]
--   -- 	setup = function()) end, ]]
--   -- }) ]]
--   {
--     "folke/lsp-colors.nvim",
--     disable = disableVariable,
--     event = "BufRead",
--   },
--   --[[ { ]]
--   -- replaced by lsp saga
--   --[[   "rmagatti/goto-preview", ]]
--   --[[   disable = disableVariable, ]]
--   --[[   config = function()) ]]
--   --[[     require("goto-preview").setup({ ]]
--   --[[       width = 120, -- Width of the floating window ]]
--   --[[       height = 25, -- Height of the floating window ]]
--   --[[       default_mappings = true, -- Bind default mappings ]]
--   --[[       debug = false, -- Print debug information ]]
--   --[[       opacity = nil, -- 0-100 opacity level of the floating window where 100 is fully transparent. ]]
--   --[[       post_open_hook = nil, -- A function taking two arguments, a buffer and a window to be ran as a hook. ]]
--   --[[       -- You can use "default_mappings = true" setup option ]]
--   --[[       -- Or explicitly set keybindings ]]
--   --[[       -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>") ]]
--   --[[       -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>") ]]
--   --[[       -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>") ]]
--   --[[     }) ]]
--   --[[   end, ]]
--   --[[ }) ]]
--   -- {
--   --   "folke/persistence.nvim",
--   --   event = "BufReadPre", -- this will only start session saving when an actual file was opened
--   --   module = "persistence",
--   --   config = function()
--   --     require("persistence").setup({
--   --       dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
--   --       options = { "buffers", "curdir", "tabpages", "winsize" },
--   --     },
--   --   end,
--   -- },
--
--   {
--     "ray-x/lsp_signature.nvim",
--     disable = disableVariable,
--     config = lua_path("lsp_signature"),
--   },
--   {
--     "simrat39/symbols-outline.nvim",
--     tag = "*",
--     disable = disableVariable,
--     cmd = "SymbolsOutline",
--     config = lua_path("symbols-outline"),
--   },
--   {
--     "npxbr/glow.nvim",
--     disable = disableVariable,
--     ft = { "markdown" },
--     config = lua_path("glow"),
--   },
--   -- -- {
--   -- -- 	"lukas-reineke/indent-blankline.nvim",
--   -- -- 	disable = disableVariable,
--   -- -- 	tag = "*",
--   -- -- 	event = "BufRead",
--   -- -- 	config = function()
--   -- -- 		vim.g.indentLine_enabled = 1
--   -- -- 		vim.g.indent_blankline_char = "▏"
--   -- -- 		vim.g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard" },
--   -- -- 		vim.g.indent_blankline_buftype_exclude = { "terminal" },
--   -- -- 		vim.g.indent_blankline_show_trailing_blankline_indent = false
--   -- -- 		vim.g.indent_blankline_show_first_indent_level = false
--   -- -- 		vim.g.indent_blankline_show_current_context = true
--   -- -- 		vim.g.indent_blankline_show_current_context_start = true
--   -- -- 	end,
--   -- -- },
--   {
--     "iamcco/markdown-preview.nvim",
--     disable = disableVariable,
--     run = "cd app && npm install",
--     ft = "markdown",
--     config = function()
--       vim.g.mkdp_auto_start = 1
--     end,
--   },
--   -- --[[ use { ]]
--   -- --[[   "davidgranstrom/nvim-markdown-preview" ]]
--   -- --[[ } ]]
--   { "ray-x/starry.nvim" },
--   -- -- {
--   -- --   "ethanholz/nvim-lastplace",
--   -- --   disable = disableVariable,
--   -- --   event = "BufRead",
--   -- --   config = function()
--   -- --     require("nvim-lastplace").setup({
--   -- --       lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
--   -- --       lastplace_ignore_filetype = {
--   -- --         "gitcommit",
--   -- --         "gitrebase",
--   -- --         "svn",
--   -- --         "hgcommit",
--   -- --       },
--   -- --       lastplace_open_folds = true,
--   -- --     },
--   -- --   end,
--   -- -- },
--   -- -- {
--   -- -- 	"folke/todo-comments.nvim",
--   -- -- 	disable = disableVariable,
--   -- -- 	event = "BufRead",
--   -- -- 	config = function()
--   -- -- 		require("todo-comments").setup(
--   -- -- 	end,
--   -- -- },
--   -- -- {
--   -- --   "tpope/vim-surround",
--   -- --   keys = {"c", "d", "y"},
--   -- -- config = function (
--   -- --         vim.cmd("nmap ds       <Plug>Dsurround"
--   -- --         vim.cmd("nmap cs       <Plug>Csurround"
--   -- --         vim.cmd("nmap cS       <Plug>CSurround"
--   -- --         vim.cmd("nmap ys       <Plug>Ysurround"
--   -- --         vim.cmd("nmap yS       <Plug>YSurround"
--   -- --         vim.cmd("nmap yss      <Plug>Yssurround"
--   -- --         vim.cmd("nmap ySs      <Plug>YSsurround"
--   -- --         vim.cmd("nmap ySS      <Plug>YSsurround"
--   -- --         vim.cmd("xmap gs       <Plug>VSurround"
--   -- --         vim.cmd("xmap gS       <Plug>VgSurround"
--   -- --       end
--   -- -- },
--   -- -- { "oberblastmeister/neuron.nvim" },
--   -- -- fred plugin perso
--   -- -- {
--   -- --     "blackCauldron7/surround.nvim",
--   -- --     config = function()
--   -- --        require("surround").setup { mappings_style = "sandwich", prefix = "e" },
--   -- --     end,
--   -- --  },
--   { "stevearc/aerial.nvim", disable = disableVariable, config = lua_path("aerial") },
--   {
--     "voldikss/vim-translator",
--     disable = disableVariable,
--     config = function()
--       vim.api.nvim_set_var("translator_target_lang", "fr")
--       vim.api.nvim_set_var("translator_source_lang", "en")
--       vim.api.nvim_set_var("translator_proxy_url", "http://proxy.onera:80")
--     end,
--   },
--   -- -- {
--   -- --       "Shatur/neovim-cmake",
--   -- --       config = function()
--   -- -- require('cmake').setup({
--   -- ----parameters_file = 'neovim.json',
--   -- --JSON file to store information about selected target,
--   -- -- run arguments and build type.--build_dir = '{cwd}/build',
--   -- -- --Build directory.The expressions `{
--   -- --   cwd
--   -- -- },
--   -- -- `, `{ os },
--   -- -- ` and `{ build_type }` will be expanded with the corresponding text values.
--   -- --   -- samples_path = script_path:parent():parent():parent() / 'samples', -- Folder with samples. `samples` folder from the plugin directory is used by default.
--   -- --   -- default_projects_path = '~/Projects', -- Default folder for creating project.
--   -- --   -- configure_arguments = '-D CMAKE_EXPORT_COMPILE_COMMANDS=1', -- Default arguments that will be always passed at cmake configure step. By default tells cmake to generate `compile_commands.json`.
--   -- --   -- build_arguments = '', -- Default arguments that will be always passed at cmake build step.
--   -- --   -- asyncrun_options = { save = 2 }, -- AsyncRun options that will be passed on cmake execution. See https://github.com/skywind3000/asyncrun.vim#manual
--   -- --   -- target_asyncrun_options = {}, -- AsyncRun options that will be passed on target execution. See https://github.com/skywind3000/asyncrun.vim#manual
--   -- --   -- dap_configuration = { type = 'cpp', request = 'launch' }, -- DAP configuration. By default configured to work with `lldb-vscode`.
--   -- --   -- dap_open_command = require('dap').repl.open, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui
--   -- -- },
--   -- --       end,
--   -- --    },
--   --
--   { "skywind3000/asyncrun.vim", tag = "*", disable = disableVariable },
--   { "skywind3000/asynctasks.vim", disable = disableVariable },
--   {
--     "jedrzejboczar/toggletasks.nvim",
--     requires = {
--       "nvim-lua/plenary.nvim",
--       "akinsho/toggleterm.nvim",
--       --[[ 'nvim-telescope/telescope.nvim/', ]]
--     },
--     -- To enable YAML config support
--     --[[ rocks = 'lyaml', ]]
--   },
--   { "simnalamburt/vim-mundo", disable = disableVariable },
--   { "vim-scripts/DoxygenToolkit.vim", disable = disableVariable },
--   -- -- {
--   -- --  "kosayoda/nvim-lightbulb",
--   -- --  disable = disableVariable,
--   -- --  config = function()
--   -- --    vim.cmd([[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
--   -- --  end,
--   -- -- },
--   --
--   -- --[[ { ]]
--   -- --[[ 	"uga-rosa/cmp-dictionary", ]]
--   -- --[[ 	disable = disableVariable, ]]
--   -- --[[  config = lua_path("cmp-dictionary") ]]
--   -- --[[ }) ]]
--   -- --[[ { ]]
--   -- --[[ 	"f3fora/cmp-spell", ]]
--   -- --[[ 	disable = disableVariable, ]]
--   -- --[[ }) ]]
--   {
--     "rhysd/git-messenger.vim",
--     disable = disableVariable,
--     config = function()
--       -- vim.api.nvim_command 'let g:git_messenger_include_diff="current"'
--       --[[ vim.api.nvim_command("let g:git_messenger_floating_win_opts = { 'border': 'single' }") ]]
--       --[[ vim.api.nvim_command("let g:git_messenger_no_default_mappings=v:true") ]]
--       vim.api.nvim_command("let g:git_messenger_always_into_popup=v:true")
--     end,
--   },
--   { "mg979/vim-visual-multi", disable = disableVariable },
--   { "xolox/vim-misc", disable = disableVariable },
--   { "xolox/vim-colorscheme-switcher", disable = disableVariable },
--   {
--     "rhysd/devdocs.vim",
--     disable = disableVariable,
--     config = function()
--       vim.cmd([[let g:devdocs_filetype_map = {
--       \   'c': 'c'},
--       ]])
--     end,
--   },
--   -- -- {
--   -- -- 	"nvim-neorg/neorg",
--   -- -- 	disable = disableVariable,
--   -- -- 	config = function()
--   -- -- 		require("neorg").setup({
--   -- -- 			-- Tell Neorg what modules to load
--   -- -- 			load = {
--   -- -- 				["core.defaults"] = {}, -- Load all the default modules
--   -- -- 				["core.integrations.telescope"] = {},
--   -- -- 				["core.keybinds"] = { -- Configure core.keybinds
--   -- -- 					config = {
--   -- -- 						default_keybinds = true, -- Generate the default keybinds
--   -- -- 						neorg_leader = "<Leader>ze", -- This is the default if unspecified
--   -- -- 					},
--   -- -- 				},
--   -- -- 				["core.norg.concealer"] = {}, -- Allows for use of icons
--   -- -- 				["core.norg.dirman"] = { -- Manage your directories with Neorg
--   -- -- 					config = {
--   -- -- 						workspaces = {
--   -- -- 							work = "~/NEORG/work",
--   -- -- 							home = "~/NEORG/home",
--   -- -- 						},
--   -- -- 					},
--   -- -- 				},
--   -- -- 				["core.norg.completion"] = {
--   -- -- 					config = {
--   -- -- 						engine = "nvim-cmp", -- We current support nvim-compe and nvim-cmp only
--   -- -- 					},
--   -- -- 				},
--   -- -- 			},
--   -- -- 		},
--   -- -- 	end,
--   -- -- 	requires = { "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
--   -- -- },
--   -- -- { "nvim-neorg/neorg-telescope", disable = disableVariable },
--   {
--     "mzlogin/vim-markdown-toc",
--     disable = disableVariable,
--   },
--   { "nvim-telescope/telescope-live-grep-args.nvim", disable = disableVariable },
--   {
--     "chipsenkbeil/distant.nvim",
--     disable = disableVariable,
--     config = function()
--       require("distant").setup({
--         -- Applies Chip's personal settings to every machine you connect to
--         --
--         -- 1. Ensures that distant servers terminate with no connections
--         -- 2. Provides navigation bindings for remote directories
--         -- 3. Provides keybinding to jump into a remote file's parent directory
--         ["*"] = require("distant.settings").chip_default(),
--       })
--     end,
--   },
--   { "ckipp01/nvim-jenkinsfile-linter", disable = disableVariable, requires = { "nvim-lua/plenary.nvim" } },
--   --[[ { "rafi/awesome-vim-colorschemes", disable = disableVariable }) ]]
--   {
--     "Shatur/neovim-cmake",
--     disable = disableVariable,
--     config = function()
--       local Path = require("plenary.path")
--       require("cmake").setup({
--         cmake_executable = "cmake", -- CMake executable to run.
--         parameters_file = "neovim.json", -- JSON file to store information about selected target, run arguments and build type.
--         -- build_dir = tostring(Path:new('{cwd}', 'build', '{os}-{build_type}')), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values.
--         build_dir = tostring(Path:new("{cwd}", "build")), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values.
--         -- samples_path = tostring(script_path:parent():parent():parent() / 'samples'), -- Folder with samples. `samples` folder from the plugin directory is used by default.
--         default_projects_path = tostring(Path:new(vim.loop.os_homedir(), "Projects")), -- Default folder for creating project.
--         configure_args = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- Default arguments that will be always passed at cmake configure step. By default tells cmake to generate `compile_commands.json`.
--         build_args = {}, -- Default arguments that will be always passed at cmake build step.
--         on_build_output = nil, -- Callback which will be called on every line that is printed during build process. Accepts printed line as argument.
--         quickfix_height = 10, -- Height of the opened quickfix.
--         -- quickfix_only_on_error = true, -- Open quickfix window only if target build failed.
--         dap_configuration = { type = "cpp", request = "launch" }, -- DAP configuration. By default configured to work with `lldb-vscode`.
--         dap_open_command = require("dap").repl.open, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui
--       })
--     end,
--   },
--   { "Pocco81/TrueZen.nvim", disable = disableVariable },
--   -- not work with lvim
--   {
--     "glacambre/firenvim",
--     run = function()
--       vim.fn["firenvim#install"](0)
--     end,
--   },
--   {
--     "phaazon/hop.nvim",
--     event = "BufRead",
--     tag = "*",
--     config = function()
--       require("hop").setup()
--       vim.api.nvim_set_keymap("n", "e", "<cmd>HopChar1<cr>", { silent = true })
--       vim.api.nvim_set_keymap("n", "E", "<cmd>HopWord<cr>", { silent = true })
--       vim.api.nvim_set_keymap("v", "e", "<cmd>HopChar1<cr>", { silent = true })
--       vim.api.nvim_set_keymap("v", "E", "<cmd>HopWord<cr>", { silent = true })
--     end,
--   },
--   { "kg8m/vim-simple-align" },
--   {
--     "nvim-treesitter/nvim-treesitter-textobjects",
--     config = function()
--       require("nvim-treesitter.configs").setup({
--         textobjects = {
--           move = {
--             enable = true,
--             set_jumps = true, -- whether to set jumps in the jumplist
--             goto_next_start = {
--               ["<leader>aj"] = "@function.outer",
--               ["]]"] = "@class.outer",
--             },
--             goto_next_end = {
--               ["]M"] = "@function.outer",
--               ["]["] = "@class.outer",
--             },
--             goto_previous_start = {
--               ["<leader>ak"] = "@function.outer",
--               ["[["] = "@class.outer",
--             },
--             goto_previous_end = {
--               ["[M"] = "@function.outer",
--               ["[]"] = "@class.outer",
--             },
--           },
--         },
--       })
--     end,
--   },
--   -- {
--   -- 	"gelguy/wilder.nvim",
--   -- 	config = function()) end,
--   -- },
--   -- {
--   -- 	"windwp/windline.nvim",
--   -- 	config = function()
--   -- 		require("wlsample.evil_line"
--   -- 		require("wlfloatline").setup(
--   -- 	end,
--   -- },
--   {
--     "vim-test/vim-test",
--   },
--   --[[ { "brymer-meneses/grammar-guard.nvim" }) ]]
--   { "p00f/clangd_extensions.nvim" },
--   {
--     "akinsho/git-conflict.nvim",
--     --[[ tag = "*", ]]
--     config = function()
--       require("git-conflict").setup({
--         default_mappings = true, -- disable buffer local mapping created by this plugin
--         disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
--         --[[ highlights = { -- They must have background color, otherwise the default color will be used ]]
--         --[[   incoming = "DiffText", ]]
--         --[[   current = "DiffAdd", ]]
--         --[[ }, ]]
--       })
--     end,
--   },
--   { "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim", config = lua_path("neogit") },
--   {
--     "akinsho/bufferline.nvim",
--     tag = "v2.*",
--     requires = "kyazdani42/nvim-web-devicons",
--     config = lua_path("bufferline"),
--   },
--   --[[ use {'HustLion/q-quit'} ]]
--   --[[ use {'akinsho/bufferline.nvim', tag = "v2.*" } ]]
--   --[[ use {'yamatsum/nvim-cursorline',  config = lua_path("nvim-cursorline") } -- bug other plugin ]]
--   --[[ { ]]
--   --[[   "akinsho/toggleterm.nvim", ]]
--   --[[   tag = "*", ]]
--   --[[   config = lua_path("toggleterm"), ]]
--   --[[ }) ]]
--   -- { "numtostr/FTerm.nvim", config = lua_path("fterm") },
--   {
--     "numtostr/FTerm.nvim",
--     config = function()
--       require("plugins.configs.fterm").setup()
--     end,
--   },
--   --   {
--   --     "numtostr/FTerm.nvim",
--   --     config = function()
--   --       local shellLocal
--   --       if vim.loop.os_uname().sysname == "Windows_NT" then
--   --         shellLocal = "pwsh -nologo" -- change the default shell
--   --       else
--   --         shellLocal = "sh"
--   --       end
--   --       require("FTerm").setup({
--   --         -- dimensions  = {
--   --         --   height = 0.8,
--   --         --   width = 0.8,
--   --         --   x = 0.5,
--   --         --   y = 0.5
--   --         -- },
--   --         -- border = 'single' -- or 'double'
--   --         border = { "┏", "━", "┓", "┃", "┛", "━", "┗", "┃" },
--   --         cmd = shellLocal,
--   --       })
--   --       vim.cmd([[
--   -- hi FloatBorder guifg=#f2594b guibg=#282828
--   -- hi NormalFloat guibg=#282828
--   -- ]])
--   --     end,
--   --   },
--   {
--     "kylechui/nvim-surround",
--     tag = "*", -- Use for stability; omit to use `main` branch for the latest features
--     config = function()
--       require("nvim-surround").setup({
--         -- Configuration here, or leave empty to use defaults
--       })
--     end,
--   },
--   { "renerocksai/telekasten.nvim", config = lua_path("telekasten") },
--   { "renerocksai/calendar-vim" },
--   { "ekickx/clipboard-image.nvim", config = lua_path("clipboard-image") },
--   { "LudoPinelli/comment-box.nvim" },
--   {
--     "max397574/better-escape.nvim",
--     config = function()
--       require("better_escape").setup()
--     end,
--   },
--   { "tibabit/vim-templates" },
--
--   {
--     "glepnir/lspsaga.nvim",
--     branch = "main",
--     config = function()
--       require("lspsaga").setup({})
--     end,
--     requires = {
--       { "nvim-tree/nvim-web-devicons" },
--       --Please make sure you install markdown and markdown_inline parser
--       { "nvim-treesitter/nvim-treesitter" },
--     },
--   },
--
--   { "numtostr/BufOnly.nvim", cmd = "BufOnly" },
--   {
--     "sudormrfbin/cheatsheet.nvim",
--     requires = {
--       { "nvim-telescope/telescope.nvim" },
--       { "nvim-lua/popup.nvim" },
--       { "nvim-lua/plenary.nvim" },
--     },
--   },
--   { "tamago324/nlsp-settings.nvim", config = lua_path("nlsp_setting") },
--   { "Civitasv/cmake-tools.nvim", config = lua_path("cmaketool") },
--   {
--     "dnlhc/glance.nvim",
--     config = function()
--       require("glance").setup({
--         -- your configuration
--       })
--     end,
--   },
--   { "rktjmp/lush.nvim" },
--   {
--     "mcchrish/zenbones.nvim",
--     -- Optionally install Lush. Allows for more configuration or extending the colorscheme
--     -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
--     -- In Vim, compat mode is turned on as Lush only works in Neovim.
--     requires = "rktjmp/lush.nvim",
--   },
--   {
--     "roobert/search-replace.nvim",
--     config = lua_path("search-replace"),
--   },
--
--   { "joechrisellis/lsp-format-modifications.nvim", config = lua_path("lsp-format-modification") },
--   --[[ use { ]]
--   --[[     'ldelossa/nvim-ide', config = lua_path("nvim-ide") ]]
--   --[[ } ]]
--   --[[ use { ]]
--   --[[   'tanvirtin/vgit.nvim', ]]
--   --[[   requires = { ]]
--   --[[     'nvim-lua/plenary.nvim' ]]
--   --[[   }, config = lua_path("vgit") ]]
--   --[[]]
--   --[[ } ]]
--   { "b0o/schemastore.nvim", config = lua_path("schemastore") },
--   {
--     "nvim-neotest/neotest",
--     requires = {
--       "nvim-lua/plenary.nvim",
--       "nvim-treesitter/nvim-treesitter",
--     },
--     config = lua_path("neotest"),
--   },
--   { "nvim-neotest/neotest-vim-test", config = lua_path("neotest-vim-test") },
-- }
--
-- SPECIAL lazyvim
local disableVariable = false
return {
  {
    "ggandor/leap.nvim",
    enabled = false,
    -- keys = {
    --   {
    --     "e",
    --     mode = { "n", "x", "o" },
    --     function()
    --       local current_window = vim.fn.win_getid()
    --       require("leap").leap({ target_windows = { current_window } })
    --     end,
    --   },
    -- },
    -- config = function(_, opts)
    --   local leap = require("leap")
    --   for k, v in pairs(opts) do
    --     leap.opts[k] = v
    --   end
    --   leap.add_default_mappings(true)
    --   vim.keymap.del({ "x", "o" }, "x")
    --   vim.keymap.del({ "x", "o" }, "X")
    -- end,
  },
  {
    "ggandor/flit.nvim",
    enabled = false,
  },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.configs.nvimtree")
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    keys = {
      {
        "<leader>e",
        false,
      },
      {
        "<leader>E",
        false,
      },
    },
  },

  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  -- then: setup supertab in cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-calc",
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-cmdline",
    },
    -- config = function()
    --   local cmp = require("cmp")
    --   local lspkind = require("lspkind")
    --   local function border(hl_name)
    --     return {
    --       { "╭", hl_name },
    --       { "─", hl_name },
    --       { "╮", hl_name },
    --       { "│", hl_name },
    --       { "╯", hl_name },
    --       { "─", hl_name },
    --       { "╰", hl_name },
    --       { "│", hl_name },
    --     }
    --   end
    --
    --   local cmp_window = require("cmp.utils.window")
    --
    --   cmp_window.info = function(self)
    --     local info = self:info_()
    --     info.scrollable = false
    --     return info
    --   end
    --
    --   cmp.setup({
    --     window = {
    --       completion = {
    --         border = border("CmpBorder"),
    --         winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
    --       },
    --       documentation = {
    --         border = border("CmpDocBorder"),
    --       },
    --     },
    --     snippet = {
    --       expand = function(args)
    --         require("luasnip").lsp_expand(args.body)
    --       end,
    --     },
    --     mapping = {
    --       ["<C-p>"] = cmp.mapping.select_prev_item(),
    --       ["<C-n>"] = cmp.mapping.select_next_item(),
    --       ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    --       ["<C-f>"] = cmp.mapping.scroll_docs(4),
    --       ["<C-Space>"] = cmp.mapping.complete(),
    --       ["<C-e>"] = cmp.mapping.close(),
    --       ["<CR>"] = cmp.mapping.confirm({
    --         behavior = cmp.ConfirmBehavior.Replace,
    --         select = false,
    --       }),
    --       ["<Tab>"] = cmp.mapping(function(fallback)
    --         if cmp.visible() then
    --           cmp.select_next_item()
    --         elseif require("luasnip").expand_or_jumpable() then
    --           vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
    --         else
    --           fallback()
    --         end
    --       end, {
    --         "i",
    --         "s",
    --       }),
    --       ["<S-Tab>"] = cmp.mapping(function(fallback)
    --         if cmp.visible() then
    --           cmp.select_prev_item()
    --         elseif require("luasnip").jumpable(-1) then
    --           vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
    --         else
    --           fallback()
    --         end
    --       end, {
    --         "i",
    --         "s",
    --       }),
    --     },
    --     --[[ formatting = { ]]
    --     --[[   format = lspkind.cmp_format({ ]]
    --     --[[     mode = "symbol_text", ]]
    --     --[[     maxwidth = 50, ]]
    --     --[[     before = function(entry, vim_item) ]]
    --     --[[       return vim_item ]]
    --     --[[     end, ]]
    --     --[[   }), ]]
    --     --[[ }, ]]
    --     sources = cmp.config.sources({
    --       --[[ { name = "vsnip" }, ]]
    --       { name = "luasnip" },
    --       { name = "nvim_lsp" },
    --       { name = "nvim_lua" },
    --       { name = "path" },
    --       { name = "calc" },
    --       --[[ { name = "treesitter" }, ]]
    --       { name = "tags" },
    --       {
    --         name = "dictionary",
    --         keyword_length = 2,
    --       },
    --       {
    --         name = "spell",
    --         option = {
    --           keep_all_entries = false,
    --           enable_in_context = function()
    --             return true
    --           end,
    --         },
    --       },
    --       -- { name = 'rg' },-- create big lag on big fortran file
    --     }, {
    --       {
    --         name = "buffer",
    --         option = {
    --           get_bufnrs = function()
    --             local buf = vim.api.nvim_get_current_buf()
    --             local byte_size = vim.api.nvim_buf_get_offset(buf, vim.api.nvim_buf_line_count(buf))
    --             if byte_size > 1024 * 1024 then -- 1 Megabyte max
    --               return {}
    --             end
    --             return { buf }
    --           end,
    --         },
    --       },
    --     }),
    --   })
    --   -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    --   cmp.setup.cmdline("/", {
    --     mapping = cmp.mapping.preset.cmdline(),
    --     sources = {
    --       { name = "buffer" },
    --     },
    --   })
    --
    --   -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    --   cmp.setup.cmdline(":", {
    --     mapping = cmp.mapping.preset.cmdline(),
    --     sources = cmp.config.sources({
    --       { name = "path" },
    --     }, {
    --       { name = "cmdline" },
    --     }),
    --   })
    -- end,
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
      })

      opts.snippet = vim.tbl_extend("force", opts.mapping, {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      })

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif require("luasnip").expand_or_jumpable() then
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif require("luasnip").jumpable(-1) then
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
          else
            fallback()
          end
        end, {
          "i",
          "s",
        }),
      })
      local lspkind = require("lspkind")
      opts.formatting = vim.tbl_extend("force", opts.formatting, {
        format = lspkind.cmp_format({
          -- mode = "symbol", -- show only symbol annotations
          maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 wilvim.tbl_extend("force", l not show more than 50 characters)
          ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
          -- The function below will be called before any actual modifications from lspkind
          -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
          -- before = function (entry, vim_item)
          --   ...
          --   return vim_item
          -- end
        }),
      })
    end,
  },

  { import = "lazyvim.plugins.extras.lang.json" },
  {
    "numtostr/FTerm.nvim",
    config = function()
      require("plugins.configs.fterm")
    end,
  },

  {
    "airblade/vim-rooter",
    config = function()
      require("plugins.configs.vim-rooter")
    end,
  },
  {
    "windwp/nvim-spectre",
    -- stylua: ignore
    -- keys = {
    --   { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
    -- },
  },
  {
    "sindrets/diffview.nvim",
    enabled = disableVariable,
    event = "BufRead",
  },
  { "tpope/vim-fugitive" },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require("plugins.configs.nvim-dap")
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("plugins.configs.nvim-dap-ui")
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    config = function()
      require("plugins.configs.nvim-dap-virtual-text")
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    config = function()
      require("plugins.configs.mason-nvim-dap")
    end,
  },
  {
    "andymass/vim-matchup",
    enabled = disableVariable,
    -- tag = "*",
    -- event = "CursorMoved",
    -- config = function()
    -- 	vim.g.matchup_matchparen_offscreen = { method = "popup" },
    -- end,
  },
  {
    "simrat39/symbols-outline.nvim",
    -- tag = "*",
    enabled = disableVariable,
    cmd = "SymbolsOutline",
    config = function()
      require("plugins.configs.symbols-outline")
    end,
  },

  -- { "onsails/lspkind-nvim" },

  -- { "weilbith/nvim-code-action-menu", cmd = "CodeActionMenu" },
  -- { "echasnovski/mini.nvim", version = "*", disable = true },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function()
  --     require("plugins.configs.nvim-autopairs")
  --   end,
  -- },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("plugins.configs.nvim-ts-autotag")
    end,
  },
  { "kevinhwang91/nvim-bqf" },
  {
    "npxbr/glow.nvim",
    enabled = disableVariable,
    ft = { "markdown" },
    config = function()
      require("plugins.configs.glow")
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    enabled = disableVariable,
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },

  { "ray-x/starry.nvim" },
  { "simnalamburt/vim-mundo", enabled = disableVariable },
  {
    "rhysd/git-messenger.vim",
    disable = disableVariable,
    config = function()
      -- vim.api.nvim_command 'let g:git_messenger_include_diff="current"'
      --[[ vim.api.nvim_command("let g:git_messenger_floating_win_opts = { 'border': 'single' }") ]]
      --[[ vim.api.nvim_command("let g:git_messenger_no_default_mappings=v:true") ]]
      vim.api.nvim_command("let g:git_messenger_always_into_popup=v:true")
    end,
  },
  { "xolox/vim-colorscheme-switcher", enabled = disableVariable, dependencies = { "xolox/vim-misc" } },
  {
    "rhysd/devdocs.vim",
    enabled = disableVariable,
    config = function()
      vim.cmd([[let g:devdocs_filetype_map = {'c': 'c'} ]])
    end,
  },
  {
    "mzlogin/vim-markdown-toc",
    enabled = disableVariable,
  },
  {
    "glacambre/firenvim",
    run = function()
      vim.fn["firenvim#install"](0)
    end,
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "e", "<cmd>HopChar1<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "E", "<cmd>HopWord<cr>", { silent = true })
      vim.api.nvim_set_keymap("v", "e", "<cmd>HopChar1<cr>", { silent = true })
      vim.api.nvim_set_keymap("v", "E", "<cmd>HopWord<cr>", { silent = true })
    end,
  },
  { "kg8m/vim-simple-align" },
  {
    "vim-test/vim-test",
  },
  {
    "akinsho/git-conflict.nvim",
    config = function()
      require("git-conflict").setup({
        default_mappings = true, -- disable buffer local mapping created by this plugin
        disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
        --[[ highlights = { -- They must have background color, otherwise the default color will be used ]]
        --[[   incoming = "DiffText", ]]
        --[[   current = "DiffAdd", ]]
        --[[ }, ]]
      })
    end,
  },
  {
    "TimUntersberger/neogit",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("plugins.configs.neogit")
    end,
  },
  {
    --   "kylechui/nvim-surround",
    --   config = function()
    --     require("nvim-surround").setup({
    --       -- Configuration here, or leave empty to use defaults
    --     })
    --   end,
    -- },

    {
      "renerocksai/telekasten.nvim",
      config = function()
        require("plugins.configs.telekasten")
      end,
    },
    {
      "max397574/better-escape.nvim",
      config = function()
        require("better_escape").setup()
      end,
    },

    { "tibabit/vim-templates" },

    { "numtostr/BufOnly.nvim", cmd = "BufOnly" },

    {
      "Civitasv/cmake-tools.nvim",
      config = function()
        require("plugins.configs.cmakeTool")
      end,
    },
    {
      "dnlhc/glance.nvim",
      config = function()
        require("glance").setup({
          -- your configuration
        })
      end,
    },
    {
      "mcchrish/zenbones.nvim",
      -- Optionally install Lush. Allows for more configuration or extending the colorscheme
      -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
      -- In Vim, compat mode is turned on as Lush only works in Neovim.
      requires = "rktjmp/lush.nvim",
    },
    {
      "nvim-neotest/neotest",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      config = function()
        require("plugins.configs.neotest")
      end,
    },
    {
      "nvim-neotest/neotest-vim-test",
      config = function()
        require("plugins.configs.neotest-vim-test")
      end,
    },
    {
      "telescope.nvim",
      dependencies = {
        "ahmedkhalf/project.nvim",
        "nvim-telescope/telescope-live-grep-args.nvim",
      },
      config = function()
        require("plugins.configs.project")
        require("telescope").load_extension("projects")
        -- require("telescope").extensions.projects.projects({})
      end,
    },
  },
  -- {
  --   "glepnir/lspsaga.nvim",
  --   branch = "main",
  --   dependencies = {
  --     { "nvim-tree/nvim-web-devicons" },
  --     --Please make sure you install markdown and markdown_inline parser
  --     { "nvim-treesitter/nvim-treesitter" },
  --   },
  -- },
  -- {
  --   "Shatur/neovim-cmake",
  --   enabled = disableVariable,
  --   config = function()
  --     local Path = require("plenary.path")
  --     require("cmake").setup({
  --       cmake_executable = "cmake", -- CMake executable to run.
  --       parameters_file = "neovim.json", -- JSON file to store information about selected target, run arguments and build type.
  --       -- build_dir = tostring(Path:new('{cwd}', 'build', '{os}-{build_type}')), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values.
  --       build_dir = tostring(Path:new("{cwd}", "build")), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values.
  --       -- samples_path = tostring(script_path:parent():parent():parent() / 'samples'), -- Folder with samples. `samples` folder from the plugin directory is used by default.
  --       default_projects_path = tostring(Path:new(vim.loop.os_homedir(), "Projects")), -- Default folder for creating project.
  --       configure_args = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- Default arguments that will be always passed at cmake configure step. By default tells cmake to generate `compile_commands.json`.
  --       build_args = {}, -- Default arguments that will be always passed at cmake build step.
  --       on_build_output = nil, -- Callback which will be called on every line that is printed during build process. Accepts printed line as argument.
  --       quickfix_height = 10, -- Height of the opened quickfix.
  --       -- quickfix_only_on_error = true, -- Open quickfix window only if target build failed.
  --       dap_configuration = { type = "cpp", request = "launch" }, -- DAP configuration. By default configured to work with `lldb-vscode`.
  --       dap_open_command = require("dap").repl.open, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui
  --     })
  --   end,
  -- },
  {
    "mrjones2014/nvim-ts-rainbow",
    config = function()
      require("plugins.configs.nvim-ts-rainbow")
    end,
  },
  {
    "voldikss/vim-translator",
    enabled = disableVariable,
    config = function()
      vim.api.nvim_set_var("translator_target_lang", "fr")
      vim.api.nvim_set_var("translator_source_lang", "en")
      vim.api.nvim_set_var("translator_proxy_url", "http://proxy.onera:80")
    end,
  },
  { "p00f/clangd_extensions.nvim" },
  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup({})
    end,
  },
  { "Darazaki/indent-o-matic" },
  { "renerocksai/calendar-vim" },
  { "joechrisellis/lsp-format-modifications.nvim" },
  { "lewis6991/nvim-treesitter-context" },
  { "skywind3000/asyncrun.vim", tag = "*", disable = disableVariable },
  { "skywind3000/asynctasks.vim", disable = disableVariable },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("plugins.configs.mason-lspconfig")
    end,
  },
  { "neovim/nvim-lspconfig" },
}
