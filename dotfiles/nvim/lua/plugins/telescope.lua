return {
   {
      -- file finder and its dependencies
      "nvim-telescope/telescope.nvim", tag = "0.1.8",
      depedencies = { "nvim-lua/plenary.nvim" },
   },
   {
     -- enhance live grep by adding prefix
      "fdschmidt93/telescope-egrepify.nvim",
      dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
      config = function()
         require("telescope").load_extension("egrepify")
      end
   },
   {
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
         require("telescope").setup({
            extensions = {
               ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                  }
               }
            }
         })
         require("telescope").load_extension("ui-select")
      end
   },
}
