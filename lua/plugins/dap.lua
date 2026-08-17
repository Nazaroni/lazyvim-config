return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  -- config = function()
  --   local dap = require("dap")
  --
  --   -- codelldb (used for host-native Rust debugging)
  --   dap.adapters.codelldb = {
  --     type = "server",
  --     port = "${port}",
  --     executable = {
  --       command = vim.fn.exepath("codelldb"),
  --       args = { "--port", "${port}" },
  --     },
  --   }
  --
  --   -- cpptools (OpenDebugAD7) wraps riscv32-esp-elf-gdb over MI for embedded
  --   -- RISC-V debugging via OpenOCD (riscv32-esp-elf-gdb has no python, so it
  --   -- can't run gdb's native --interpreter=dap mode directly).
  --   dap.adapters.cppdbg = {
  --     id = "cppdbg",
  --     type = "executable",
  --     command = vim.fn.expand("~/.local/share/nvim-lazyvim/mason/bin/OpenDebugAD7"),
  --   }
  -- end,
}
