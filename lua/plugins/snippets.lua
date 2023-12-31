return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = function(_, opts)
    require("luasnip").filetype_extend("python", { "django" })
    require("luasnip").filetype_extend("templ", { "html" })
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
