return {
  {
    -- Incremental rename
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    keys = {
      {
        "<leader>rn",
        function()
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        desc = "Incremental rename",
        noremap = true,
        expr = true,
      },
    },
    config = true,
  },
  -- Refactoring tool
  {
    "ThePrimeagen/refactoring.nvim",
    keys = {
      {
        "<leader>r",
        function()
          require("refactoring").select_refactor({
            show_success_message = true,
          })
        end,
        desc = "Refactoring tool",
        mode = "v",
        noremap = true,
        silent = true,
        expr = false,
      },
    },
    opts = {},
  },
}
