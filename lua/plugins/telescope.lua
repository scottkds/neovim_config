return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<leader>f', builtin.find_files, {}) -- space-f find files
            vim.keymap.set('n', '<leader>g', builtin.live_grep, {}) -- spave-g grep files
            vim.keymap.set('n', '<leader>t', ':Neotree filesystem reveal left<CR>')
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {}
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    },
  }
