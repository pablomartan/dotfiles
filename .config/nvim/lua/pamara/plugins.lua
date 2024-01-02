local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
  'wbthomason/packer.nvim';

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
     -- or                            , branch = '0.1.x',
     requires = { {'nvim-lua/plenary.nvim'} }
  };
  { "catppuccin/nvim", as = "catppuccin" };
  'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'};
  'mbbill/undotree';
  'tpope/vim-fugitive';
  {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
      }
  };
  {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  };
  'f-person/auto-dark-mode.nvim';
  'mattn/emmet-vim';
  'christoomey/vim-tmux-navigator';
  'rbong/vim-flog';
}
