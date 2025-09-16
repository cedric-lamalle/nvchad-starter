return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  { import = "nvchad.blink.lazyspec" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css", "markdown", "markdown_inline",
        "dockerfile", "editorconfig", "fish", "git_config", "go", "gomod", "gosum",
        "gotmpl", "helm", "java", "javadoc", "javascript", "nix", "php", "python",
        "regex", "rust", "sql", "ssh_config", "typescript", "xml", "yaml"
      },
      indent = {
        enable = true
      },
    },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },{
     "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
  },
  opts = {
    -- lsp_keymaps = false,
    -- other options
  },
  config = function(lp, opts)
    require("go").setup(opts)
    local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      callback = function()
      require('go.format').goimports()
      end,
      group = format_sync_grp,
    })
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  -- build = ':lua require("go.install").update_all_sync()'
  }
}
