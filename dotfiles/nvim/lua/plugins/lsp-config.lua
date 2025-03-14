return {
   {
      "neovim/nvim-lspconfig",
      config = function()
         local capabilities = require("cmp_nvim_lsp").default_capabilities()
         local lspconfig = require("lspconfig")

         lspconfig.lua_ls.setup({
            capabilities = capabilities,
         })
         lspconfig.ocamllsp.setup({
            capabilities = capabilities,
         })
         lspconfig.harper_ls.setup({
            capabilities = capabilities,
         })

      end,
   },
}
