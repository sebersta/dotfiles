require("config.defaults")
require("config.keymaps")
require("config.plugins")

if vim.fn.has("unix") == 1 then
    local uname = vim.fn.system("uname -s")
    if uname == "Darwin\n" then
			require("config.mac")
    end
end
