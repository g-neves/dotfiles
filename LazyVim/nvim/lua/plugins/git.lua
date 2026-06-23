return {
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose" },
    keys = {
      -- <leader>gv abre a tela de diff lado a lado
      { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
    },
    opts = {
      keymaps = {
        -- Atalhos gerais para quando você estiver em QUALQUER tela do Diffview
        file_panel = {
          { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Fechar Diffview" } },
        },
        view = {
          -- 'q' fecha o Diffview de qualquer lugar
          { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Fechar Diffview" } },
          -- 's' faz o stage (adiciona) apenas o bloco onde seu cursor está
          { "n", "s", "<cmd>Gitsigns stage_hunk<cr>", { desc = "Stage este bloco" } },
          -- 'u' desfaz o stage (unstage) do bloco onde seu cursor está
          { "n", "u", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset/Unstage este bloco" } },
        },
      },
    },
  },
}
