-- NOTE: a little buggy: doesn't work when a side panel is open?
-- This plugin allows for testing in vim.
return {
    "vim-test/vim-test",
    dependencies = {
        "preservim/vimux",
    },
    -- vim.keymap.set('n', '<leader>t', ':TestNearest<CR>'), -- conflicts with my binding for treesitter
    vim.keymap.set('n', '<leader>T', ':TestFile<CR>'),
    -- vim.keymap.set('n', '<leader>a', ':TestSuite<CR>'), -- conflicts with harpoon see all files
    vim.keymap.set('n', '<leader>l', ':TestLast<CR>'),
    vim.keymap.set('n', '<leader>g', ':TestVisit<CR>'),
    vim.cmd("let test#strategy = 'vimux'"),
}
