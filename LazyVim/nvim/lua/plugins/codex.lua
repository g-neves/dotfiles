return {
  -- Aponta para o repositório principal com as modificações do KKrampis
  "johnseth97/codex.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    autoinstall = false,
  },
  config = function(_, opts)
    require("codex").setup(opts)

    local map = vim.keymap.set
    -- Ctrl + x abre/fecha o painel lateral integrado do Codex
    map("n", "<C-x>", "<cmd>CodexToggle<CR>", { desc = "Codex: Toggle Painel Lateral" })
    -- Alt + s (Modo Visual) envia o código selecionado direto para o Codex
    map("v", "<M-s>", "<cmd>CodexSend<CR>", { desc = "Codex: Enviar Seleção" })
    -- Alt + a adiciona o arquivo/contexto do buffer atual ao prompt do Codex
    map("n", "<M-a>", "<cmd>CodexContext<CR>", { desc = "Codex: Atrelar Contexto do Arquivo" })
  end,
}
