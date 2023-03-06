require("lazy").setup({
    { "catppuccin/nvim",               name = "catppuccin" },
    "feline-nvim/feline.nvim",
    "folke/neodev.nvim",
    "tpope/vim-commentary",
    "tpope/vim-surround",
    "tpope/vim-fugitive",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },
    "windwp/nvim-autopairs",
    "RRethy/vim-illuminate",
    "lukas-reineke/lsp-format.nvim",
    { 'nvim-telescope/telescope.nvim', branch = "0.1.x",   dependencies = { "nvim-lua/plenary.nvim" } },
    'gbrlsnchs/telescope-lsp-handlers.nvim',
    'lewis6991/gitsigns.nvim',
    'folke/trouble.nvim',
    'mfussenegger/nvim-dap',
    { 'mfussenegger/nvim-dap-python', dependencies = 'mfussenegger/nvim-dap' },
    { 'rcarriga/nvim-dap-ui',         dependencies = 'mfussenegger/nvim-dap' },
    -- { 'lukas-reineke/headlines.nvim', dependencies = 'nvim-treesitter/nvim-treesitter' },
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { { "nvim-lua/plenary.nvim" } },
    }
}, {}
)
