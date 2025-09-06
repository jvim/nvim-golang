local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ 'phaazon/hop.nvim' },
{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x", dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "s1n7ax/nvim-window-picker"}
  },
{ 'nvim-treesitter/nvim-treesitter' },
{ 'neovim/nvim-lspconfig' },
{ 'catppuccin/nvim' },
{ 'hrsh7th/cmp-nvim-lsp' }, { 'hrsh7th/cmp-buffer' }, { 'hrsh7th/cmp-path' },
{ 'hrsh7th/cmp-cmdline' }, { 'hrsh7th/nvim-cmp' },
{ 'hrsh7th/vim-vsnip'},
{ 'mason-org/mason.nvim', build = ":MasonUpdate" },
 {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
{'windwp/nvim-autopairs'},
{"akinsho/bufferline.nvim"},
{'terrortylor/nvim-comment'},
{
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
},
{
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
},
 {'akinsho/toggleterm.nvim', version = "*", config = true},
 {"folke/which-key.nvim"}, 
 {'folke/tokyonight.nvim'},
 { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

 {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  {"nvim-mini/mini.icons"}
}
})
