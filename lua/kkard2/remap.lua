vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ff", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

vim.keymap.set({"n", "v"}, "<leader>d", [["+d]])
vim.keymap.set("n", "<leader>D", [["+D]])

vim.keymap.set("n", "<leader>h", vim.cmd.bp)
vim.keymap.set("n", "<leader>l", vim.cmd.bn)

vim.keymap.set("n", "<leader>tt", function()
    -- i am sincerely sorry for the following code
    if vim.fn.has("win32") then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(":terminal<CR>ipwsh<CR>cls<CR>", true, true, true), "n", true)
    else
        vim.cmd("startinsert")
    end
end)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

