local M = {}

function M.run_command_float(cmd)
    -- pls fix this in the future
    vim.cmd('FloatermToggle lang_command')
    vim.fn.feedkeys(cmd .. vim.api.nvim_replace_termcodes("<CR>", true, true, true))
end

function M.run_command(cmd)
    vim.cmd('!' .. cmd)
end

return M
