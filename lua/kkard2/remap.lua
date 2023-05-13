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
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- exit floating window when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", function()
    local win_number = vim.api.nvim_get_current_win()
    if vim.api.nvim_win_get_config(win_number).relative ~= "" then
        vim.cmd(":q")
    end
end)


function call_langs_func(func)
    local status, lib = pcall(require, "kkard2.langs." .. vim.bo.filetype)

    if status then
        lib[func]()
    else
        vim.api.nvim_err_writeln("Unknown file type")
    end
end


vim.keymap.set("n", ",r", function()
    call_langs_func("run")
end)

vim.keymap.set("n", ",c", function()
    call_langs_func("check")
end)

vim.keymap.set("n", ",t", function()
    call_langs_func("test")
end)

vim.keymap.set("n", ",f", function()
    call_langs_func("fmt")
end)

vim.keymap.set("n", ",b", function()
    call_langs_func("build")
end)
