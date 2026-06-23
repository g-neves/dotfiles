return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
    },
  },
  {
    "Mofiqul/vscode.nvim",
    name = "vscode",
    priority = 1000,
    opts = {
      transparent = false, -- Set to true if your terminal has transparency
      italic_comments = true, -- Gives it a modern editor feel
      underline_links = true,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- Make sure it loads before other plugins
    config = true,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
