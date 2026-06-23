-- ~/.config/nvim/lua/plugins/avante.lua
return {
  "yetone/avante.nvim",
  build = "make BUILD_FROM_SOURCE=true",
  opts = {
    provider = "copilot",
    mode = "legacy",
    behaviour = {
      auto_apply_diff_after_generation = true,
    },
    file_selector = {
      provider = "snacks",
      provider_opts = {},
    },
    input = {
      provider = "snacks",
    },
    providers = {
      copilot = {
        model = "claude-sonnet-4.6",
      },
    },
  },
}
