return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { "ellisonleao/gruvbox.nvim" }

    -- treesitter

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- mason
    use 'williamboman/mason.nvim'    
    use 'williamboman/mason-lspconfig.nvim'

    -- rust
    use 'simrat39/rust-tools.nvim'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'neovim/nvim-lspconfig' 
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'                             

    -- Prettier
    use {
        'prettier/vim-prettier',
        run = 'yarn install --frozen-lockfile --production',
        ft = {'javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'}
    }
    

    -- minimal neotree

    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
    }

    -- everything else
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

   
end)


