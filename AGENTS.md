# Agent Guidelines

## Commands
- **Format:** `stylua .` (Indent: 2 spaces, Width: 120)
- **Lint:** No strict linter configured; rely on LSP diagnostics.
- **Test:** No automated test suite; manual verification in Neovim required.

## Code Style & Conventions
- **Language:** Lua 5.1 / LuaJIT (Neovim standard).
- **Structure:** 
  - Core settings in `lua/config/` (options, keymaps, autocmds).
  - Plugins in `lua/plugins/` returning a table/spec.
- **Formatting:** Follow `stylua.toml`: 2 spaces indentation, 120 char width.
- **Best Practices:**
  - Always use `local` variables.
  - Use `vim.tbl_deep_extend("force", ...)` for merging config tables.
  - Prefer `vim.keymap.set` over `vim.api.nvim_set_keymap`.
  - Check `lazy.nvim` docs for plugin spec syntax (keys, event, opts).
