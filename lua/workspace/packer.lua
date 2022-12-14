return require("packer").startup(function()
    use("wbthomason/packer.nvim")

    -- Simple plugins can be specified as strings
        use { 
        'TimUntersberger/neogit', 
        requires = { 
            'nvim-lua/plenary.nvim',
            'sindrets/diffview.nvim' 
        }
    }
      
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("BurntSushi/ripgrep")
    use("nvim-telescope/telescope-live-grep-args.nvim")
    use {
        'sudormrfbin/cheatsheet.nvim',

        requires = {
            {'nvim-telescope/telescope.nvim'},
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'},
        }
    }

    -- All the things
    use("neovim/nvim-lspconfig")
    use("williamboman/nvim-lsp-installer")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- Primeagen doesn"t create lodash
    use("ThePrimeagen/git-worktree.nvim")
    use("ThePrimeagen/harpoon")

    use("mbbill/undotree")

    -- Colorscheme section
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")

    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use ("jose-elias-alvarez/null-ls.nvim")
    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim",
            'olimorris/neotest-phpunit',
        }
    }
    --[[
    --
    -- Lazy loading:
    -- Load on specific commands
    use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
    -- Load on an autocommand event
    use {'andymass/vim-matchup', event = 'VimEnter'}
    -- Load on a combination of conditions: specific filetypes or commands
    -- Also run code after load (see the "config" key)
    use {
        'w0rp/ale',
        ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
        cmd = 'ALEEnable',
        config = 'vim.cmd[[ALEEnable]]--[['
    }
    -- Plugins can have dependencies on other plugins
    use {
        'haorenW1025/completion-nvim',
        opt = true,
        requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
    }
    -- Plugins can also depend on rocks from luarocks.org:
    use {
        'my/supercoolplugin',
        rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
    }
    -- You can specify rocks in isolation
    use_rocks 'penlight'
    use_rocks {'lua-resty-http', 'lpeg'}
    -- Local plugins can be included
    use '~/projects/personal/hover.nvim'
    -- Plugins can have post-install/update hooks
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- Post-install/update hook with call of vimscript function with argument
    use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
    -- Use specific branch, dependency and run lua file after load
    use {
        'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    -- Use dependency and run lua function after load
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
        config = function() require('gitsigns').setup() end
    }
    -- You can specify multiple plugins in a single call
    use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}
    -- You can alias plugin names
    use {'dracula/vim', as = 'dracula'}
end)
--]]
end)
