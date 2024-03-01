---@diagnostic disable: missing-fields
return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = { "windwp/nvim-ts-autotag" },
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
        indent = { enable = true },
        autotag = { enable = true },
        highlight = {
          enable = true,
          additional_vim_regex_highlight = { "markdown" },
        },
        ensure_installed = {
          "astro",
          "bash",
          "css",
          "graphql",
          "gitignore",
          "html",
          -- "htmx",
          "javascript",
          "json",
          "jsonc",
          "kdl",
          "lua",
          "markdown",
          "markdown_inline",
          "prisma",
          "query",
          "rust",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>", -- <leader>ss
            node_incremental = "<C-space>", -- <leader>si
            scope_incremental = false, -- <leader>sc
            node_decremental = "<bs>", -- <leader>sd
          },
        },
        query_linter = {
          enable = true,
          use_virtual_text = true,
          lint_events = { "BufWrite", "CursorHold" },
        },
      })
    end,
  },
}
