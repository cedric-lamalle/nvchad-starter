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
}
