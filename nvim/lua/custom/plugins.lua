local plugins = {
  {
    'nvimtools/none-ls.nvim',
    lazy = false,
      dependencies = {
        'nvimtools/none-ls-extras.nvim',
        'jayp0521/mason-null-ls.nvim', -- ensure dependencies are installed
      },
      config = function()
        require "custom.configs.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format"
      }
    }
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
      branch = 'v3.x',
      lazy = false,
      dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
        {
          's1n7ax/nvim-window-picker',
          version = '2.*',
          config = function()
            require('window-picker').setup {
              filter_rules = {
                include_current_win = false,
                autoselect_one = true,
                -- filter using buffer options
                bo = {
                  -- if the file type is one of following, the window will be ignored
                  filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
                  -- if the buffer type is one of following, the window will be ignored
                  buftype = { 'terminal', 'quickfix' },
                },
              },
            }
          end,
        },
      },
    config = function()
      require "custom.configs.neotree"
    end,
  },
  {
    'goolord/alpha-nvim',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require "custom.configs.alpha"
    end,
  },
}

return plugins
