
require("config.defaults")
require("config.keymaps")
require("config.plugins")

if vim.fn.has("unix") == 1 then
  local sysname = vim.loop.os_uname().sysname
  if sysname == "Darwin" then
    require("config.mac")
  end
end

