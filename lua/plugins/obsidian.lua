return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Documents/OBSIDIAN_VAULT/",
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
      use_path_only = false,
    },
    templates = {
      subdir = "Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
    ui = {
      enable = false,
    },
    follow_url_func = function(url)
      vim.fn.jobstart({ "xdg-open", url })
    end,
  },
}
