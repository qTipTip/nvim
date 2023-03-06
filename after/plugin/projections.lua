require("projections").setup({
    workspaces = {
         "~/downloads",
    }
})
require("telescope").load_extension("projections")

vim.keymap.set("n", "<leader>fp", function()
    vim.cmd("Telescope projections")
end)

local session = require("projections.session")
vim.api.nvim_create_autocmd({'VimLeavePre'}, {
    callback = function() session.store(vim.loop.cwd()) end,
})

local switcher = require("projections.switcher")
vim.api.nvim_create_autocmd({'VimLeavePre'}, {
    callback = function() 
        if vim.fn.argc() == 0 then switcher.switch(vim.loop.cwd()) end
    end,
})
