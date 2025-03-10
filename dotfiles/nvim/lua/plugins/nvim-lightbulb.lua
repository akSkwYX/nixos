return{
   "kosayoda/nvim-lightbulb",
   config = function()
      require("nvim-lightbulb").setup({
         priority = 10,
         hide_in_unfocused_buffer = false,
         validate_config = "auto",
         action_kinds = nil,
         sign = {
            enabled = true,
            text = "💡",
            lens_text = "🔎",
            hl = "LightBulbSign",
         },
         virtual_text = {
            enabled = false
         },
         float = {
            enabled = false
         },
         number = {
            enabled = false
         },
         line = {
            enabled = false
         },
         autocmd = {
            enabled = true,
            update_time = 0,
            pattern = { "*" }
         },

      })
   end
}
