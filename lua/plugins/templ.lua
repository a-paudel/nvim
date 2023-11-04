-- return {}
return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "vrischmann/tree-sitter-templ",
    },
    opts = function()
      local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      treesitter_parser_config.templ = {
        install_info = {
          url = "https://github.com/vrischmann/tree-sitter-templ.git",
          files = { "src/parser.c", "src/scanner.c" },
          branch = "master",
        },
      }

      vim.treesitter.language.register("templ", "templ")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    init = function()
      local lspconfig = require("lspconfig")
      lspconfig.unocss.setup({
        filetypes = { "html", "svelte", "typescriptreact", "javascriptreact", "templ" },
      })
    end,
  },
}
