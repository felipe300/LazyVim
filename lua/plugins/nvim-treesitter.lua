return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = { "windwp/nvim-ts-autotag" },
    main = "nvim-treesitter.configs",
    opts = {
      indent = { enable = true },
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
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },
    },
  },
}
