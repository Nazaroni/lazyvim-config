return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters = {
      ["markdownlint-cli2"] = {
        args = {
          "--config",
          vim.fn.stdpath("config") .. "/other/markdownlint-cli2.yaml",
          "--",
        },
      },
    },
  },
}
