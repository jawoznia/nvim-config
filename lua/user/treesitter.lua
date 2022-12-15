local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

-- Treesitter Plugin Setup
configs.setup({
	ensure_installed = "all",
	auto_install = true,
	sync_install = false,
	ignore_install = { "" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	ident = { enable = true },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
})
