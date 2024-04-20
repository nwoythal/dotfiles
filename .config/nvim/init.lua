-- set up package manager; this should be first
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Package section
-- coq_settings must be first otherwise it won't start alongside nvim
vim.g.coq_settings = { auto_start = "shut-up" }
require("lazy").setup({
    { "tanvirtin/monokai.nvim" },
    { "neovim/nvim-lspconfig" },
    { "ms-jpq/coq_nvim", },
    { "ms-jpq/coq.artifacts" },
    { "ms-jpq/coq.thirdparty" },
})
local coq = require("coq")
local lsp = require("lspconfig")
lsp.pyright.setup(coq)
require("monokai").setup()

-- vimopts section
for key, value in pairs({
    expandtab = true,
    ignorecase = true,
    number = true,
    ruler = true,
    shiftwidth = 4,
    tabstop = 4,
}) do
    vim.o[key] = value
end
