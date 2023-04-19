-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local g = vim.g
local wo = vim.wo
local bo = vim.bo
local opt = vim.opt

bo.tabstop = 4
bo.shiftwidth = 4
bo.expandtab = true

opt.colorcolumn = "80"
