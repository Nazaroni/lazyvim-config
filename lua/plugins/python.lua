return {
  { import = "lazyvim.plugins.extras.lang.python" },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.pyright = false
      opts.servers.ruff = {}
      opts.servers.basedpyright = {}
    end,
  },
}
