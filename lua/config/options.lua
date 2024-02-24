local opts = vim.opt

vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.scriptencoding = "utf-8"

-- opts.winbar = "%=%m %f"

opts.encoding = "utf-8"
opts.fileencoding = "utf-8"

opts.title = true
opts.autoindent = true
opts.hlsearch = true
opts.backup = false
opts.showcmd = true
opts.cmdheight = 0
opts.laststatus = 0
opts.scrolloff = 10
opts.inccommand = "split"
opts.smarttab = true
opts.breakindent = true
opts.backspace = { "start", "eol", "indent" }
opts.path:append({ "**" })
opts.wildignore:append({ "*/node_modules/*" })
-- -- Add asterisks in block comments
opts.formatoptions:append({ "r" })
