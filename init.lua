--Basic
require('core.plugins')
require('core.mappings')
require('core.colors')
require('core.configs')

--Plugins
require('plugins.neotree')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.mason')
require('plugins.telescope')
require('plugins.autopairs')
require('plugins.bufferline')
require('plugins.comments')
require('plugins.dashboard')
require('plugins.lualine')
require('plugins.whichkey')
require('plugins.toggleterm')

vim.cmd[[colorscheme tokyonight-night]]
vim.deprecate = function() end
