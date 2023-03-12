require("projections").setup({
    workspaces = {
        "~/downloads"
    }
})
require("telescope").load_extension("projections")

vim.keymap.set("n", "<leader>fp", function()
    vim.cmd("Telescope projections")
end)

local session = require("projections.session")
vim.api.nvim_create_autocmd({ 'VimLeavePre' }, {
    callback = function() session.store(vim.loop.cwd()) end,
})

vim.api.nvim_create_autocmd({ 'VimEnter' }, {
    callback = function()
        if vim.fn.argc() ~= 0 then return end
        local info = session.info(vim.loop.cwd())
        if info == nil then
            session.restore_latest()
        else
            session.restore(vim.loop.cwd())
        end
    end,
})
