local M = {}

function M.run_command(cmd)
    -- pls fix this in the future
    vim.cmd('FloatermFirst')
    vim.fn.feedkeys(cmd .. vim.api.nvim_replace_termcodes("<CR>", true, true, true))
end

return M
