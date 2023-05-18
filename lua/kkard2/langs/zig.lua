utils = require("kkard2.langs.utils")

local M = {}

function M.run()
    utils.run_command_float("zig run")
end

function M.build()
    utils.run_command_float("zig build")
end

function M.test()
    utils.run_command_float("zig test")
end

function M.fmt()
    utils.run_command("zig fmt")
end

return M
