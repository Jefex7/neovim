--[[
require('onedarkplus').setup({
    disable_background = true
})
]]-- 

function ColorMyPencils(color)
	color = color or "habamax"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr",{ fg = "#d8f5f1" })
	vim.api.nvim_set_hl(0, "LineNrAbove",{ fg = "#3f5754" })
	vim.api.nvim_set_hl(0, "LineNrBelow",{ fg = "#3f5754" })

end

ColorMyPencils()
