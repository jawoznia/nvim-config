return {
	settings = {
		["rust-analyzer"] = {
			assist = {
				importGranularity = "module",
			},
			cargo = {
				loadOutDirsFromCheck = true,
			},
			procMacro = {
				enable = true,
			},
			checkOnSave = {
				AllTargets = true,
				AllFeatures = true,
				command = "clippy",
			},
			hover = {
				linksInHover = false,
			},
		},
	},
}
