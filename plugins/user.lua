return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    opts = {},
  },
  {
	"lukas-reineke/indent-blankline.nvim",
	  opts = function(_, opts)
		-- Other blankline configuration here
		  return require("indent-rainbowline").make_opts(opts)
	  end,
	  dependencies = {
		  "TheGLander/indent-rainbowline.nvim",
	  },
  }
}
