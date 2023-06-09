-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
local opt = vim.opt --equivalent to :set

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.colorcolumn = "80"

opt.textwidth = 80
