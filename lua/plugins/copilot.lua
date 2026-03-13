return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = false,
        auto_trigger = false,
        keymap = {
          accept = false,
          next = false,
          prev = false,
          dismiss = false,
        },
      },
    },
    keys = {
      {
        "<M-]>",
        function()
          require("copilot.suggestion").next()
        end,
        mode = { "i" },
        desc = "Copilot Next Suggestion",
      },
      {
        "<M-l>",
        function()
          require("copilot.suggestion").accept()
        end,
        mode = { "i" },
        desc = "Copilot Accept Suggestion",
      },
      {
        "<M-[>",
        function()
          require("copilot.suggestion").prev()
        end,
        mode = { "i" },
        desc = "Copilot Prev Suggestion",
      },
      {
        "<M-\\>",
        function()
          require("copilot.suggestion").dismiss()
        end,
        mode = { "i" },
        desc = "Copilot Dismiss Suggestion",
      },
    },
  },
}
