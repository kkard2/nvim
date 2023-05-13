utils = require("kkard2.langs.utils")

local M = {}

function M.run()
    utils.run_command("cargo run")
end

function M.build()
    utils.run_command("cargo build")
end

function M.test()
    utils.run_command("cargo test")
end

function M.check()
    utils.run_command("cargo clippy")
end

function M.fmt()
    utils.run_command("cargo fmt")
end

return M
