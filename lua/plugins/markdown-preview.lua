return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  config = function()
    local keymap = vim.keymap
    keymap.set(
      "n",
      "<leader>wm",
      ":MarkdownPreviewToggle<cr>",
      { buffer = 0, noremap = true, desc = "Markdown Preview Toggle" }
    )
  end,
}
