return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black" },
      },
    },
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       pylsp = {
  --         settings = {
  --           pylsp = {
  --             plugins = {
  --               pylint = { enabled = "false" },
  --               pyflakes = { enabled = "false" },
  --               pycodestyle = { enabled = "false" },
  --             },
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
}
