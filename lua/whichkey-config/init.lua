local wk = require("which-key")

local mappings = {
  x = {":bdelete<cr>", "Close"},
  E = {":e ~/.config/nvim/init.lua<cr>", "Edit config"},
  f = {":Telescope find_files<cr>", "Telescope Find Files"},
  r = {":Telescope live_grep<cr>", "Telescope Live Grep"},
  b = {":Telescope buffers<cr>", "Telescope buffers"},
  t = {":Telescope help_tags<cr>", "Telescope Help Tags"}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
