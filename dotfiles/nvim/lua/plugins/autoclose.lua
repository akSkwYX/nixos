return {
   "m4xshen/autoclose.nvim",
   config = function ()
      require("autoclose").setup({
         keys = {
            ["("] = { escape = true, close = true, pair = "()" },
            ["{"] = { escape = true, close = true, pair = "{}" },
            ["["] = { escape = true, close = true, pair = "[]" },
            ["'"] = { escape = true, close = true, pair = "''" },
            ['"'] = { escape = true, close = true, pair = '""' },
         },
      })
   end
}
