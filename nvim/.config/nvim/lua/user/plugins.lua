-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then return end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end
    }
}

-- Install your plugins here
return packer.startup(function(use)


    -- System
    -- Have packer manager itself
    -- https://github.com/wbthomason/packer.nvim
    use "wbthomason/packer.nvim"

    -- An implementation of the Popup API from vim in Neovim
    -- https://github.com/nvim-lua/popup.nvim
    use "nvim-lua/popup.nvim"

    -- Useful lua functions used ny lots of plugins
    -- https://github.com/nvim-lua/plenary.nvim
    use "nvim-lua/plenary.nvim"

    -- https://github.com/lewis6991/impatient.nvim
    use 'lewis6991/impatient.nvim'


    -- Appearence
    -- https://github.com/nvim-treesitter/nvim-treesitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

    -- https://github.com/nvim-treesitter/nvim-treesitter-context
    use 'romgrk/nvim-treesitter-context'

    -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- https://github.com/EdenEast/nightfox.nvim
    use "edeneast/nightfox.nvim"

    -- https://github.com/lukas-reineke/indent-blankline.nvim
    use "lukas-reineke/indent-blankline.nvim"

    -- https://github.com/nvim-lualine/lualine.nvim
    use "nvim-lualine/lualine.nvim"

    -- https://github.com/akinsho/bufferline.nvim
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = { 'kyazdani42/nvim-web-devicons', "moll/vim-bbye" }
    }

    -- https://github.com/moll/vim-bbye
    use "moll/vim-bbye"

    -- https://github.com/goolord/alpha-nvim
    use 'goolord/alpha-nvim'


    -- Autocompletions
    -- https://github.com/neovim/nvim-lspconfig
    use "neovim/nvim-lspconfig"

    -- https://github.com/williamboman/nvim-lsp-installer
    use "williamboman/nvim-lsp-installer"

    -- https://github.com/tamago324/nlsp-settings.nvim
    use "tamago324/nlsp-settings.nvim"

    -- https://github.com/jose-elias-alvarez/null-ls.nvim
    use "jose-elias-alvarez/null-ls.nvim"

    -- cmp plugins
    -- https://github.com/hrsh7th/nvim-cmp
    use "hrsh7th/nvim-cmp"

    -- https://github.com/hrsh7th/cmp-buffer
    use "hrsh7th/cmp-buffer"

    -- https://github.com/hrsh7th/cmp-path
    use "hrsh7th/cmp-path"

    -- https://github.com/hrsh7th/cmp-cmdline
    use "hrsh7th/cmp-cmdline"

    -- https://github.com/saadparwaiz1/cmp_luasnip
    use "saadparwaiz1/cmp_luasnip"

    -- https://github.com/hrsh7th/cmp-nvim-lsp
    use "hrsh7th/cmp-nvim-lsp"

    -- snippets
    -- https://github.com/L3MON4D3/LuaSnip
    use "L3MON4D3/LuaSnip"

    -- https://github.com/rafamadriz/friendly-snippets
    use "rafamadriz/friendly-snippets"


    -- Navigation
    -- https://github.com/nvim-telescope/telescope.nvim
    use "nvim-telescope/telescope.nvim"

    -- https://github.com/kyazdani42/nvim-tree.lua
    use 'kyazdani42/nvim-tree.lua'

    -- https://github.com/wfxr/minimap.vim
    use 'wfxr/minimap.vim'

    -- https://github.com/ahmedkhalf/project.nvim
    use "ahmedkhalf/project.nvim"


    -- Editor features
    -- python venv auto activation
    -- https://github.com/HallerPatrick/py_lsp.nvim
    use "HallerPatrick/py_lsp.nvim"

    -- https://github.com/lewis6991/gitsigns.nvim
    use "lewis6991/gitsigns.nvim"

    -- https://github.com/simrat39/symbols-outline.nvim
    use "simrat39/symbols-outline.nvim"

    -- https://github.com/tpope/vim-surround
    use "tpope/vim-surround"

    -- https://github.com/windwp/nvim-autopairs
    use "windwp/nvim-autopairs"

    -- https://github.com/numToStr/Comment.nvim
    use "numToStr/Comment.nvim"

    -- https://github.com/famiu/nvim-reload
    use 'famiu/nvim-reload'

    -- https://github.com/filipdutescu/renamer.nvim
    use {
        'filipdutescu/renamer.nvim',
        branch = 'master',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
end)
