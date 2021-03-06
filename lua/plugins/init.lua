return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'patstockwell/vim-monokai-tasty'
  -- use 'shaunsingh/nord.nvim'
  -- use 'romgrk/github-light.vim'
  use {'nvim-treesitter/nvim-treesitter', run=":TSUpdate"}
  use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() require'nvim-tree'.setup {} end
  }
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}
  use {'folke/which-key.nvim'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/vim-vsnip'}
  use {'neovim/nvim-lspconfig'}
  use {'onsails/lspkind-nvim'}
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function ()
      require('gitsigns').setup{current_line_blame = true}
    end
    -- tag = 'release' -- To use the latest release
  }
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use {'norcalli/nvim-colorizer.lua'}
  use {'glepnir/dashboard-nvim'}
  use {'lukas-reineke/indent-blankline.nvim'}
  use {'lukas-reineke/format.nvim'}
  use {"akinsho/toggleterm.nvim"}
  use {"terrortylor/nvim-comment"}
  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
end)
