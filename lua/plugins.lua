-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local fn = vim.fn


vim.g.package_home = fn.stdpath("data") .. "/site/pack/packer/"
local packer_install_dir = vim.g.package_home .. "/opt/packer.nvim"

local packer_repo = "https://github.com/wbthomason/packer.nvim"
local install_cmd = string.format("10split |term git clone --depth=1 %s %s", packer_repo, packer_install_dir)

-- Auto-install packer in case it hasn't been installed.
if fn.glob(packer_install_dir) == "" then
  vim.api.nvim_echo({ { "Installing packer.nvim", "Type" } }, true, {})
  vim.cmd(install_cmd)
end

-- Load packer.nvim
vim.cmd("packadd packer.nvim")

return require("packer").startup(function()
	-- Speed up startup time
	use {'lewis6991/impatient.nvim', config = [[require('impatient')]]}

	-- Packer manages itself
	use {'wbthomason/packer.nvim', opt = true}

	-- Themes
	use { 'projekt0n/github-nvim-theme', opt = true }
	use {'EdenEast/nightfox.nvim'}

end)

		
