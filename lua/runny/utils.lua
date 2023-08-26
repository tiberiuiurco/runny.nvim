local runny = require("runny")

local M = {}

function M.get_bufnr()
		local filetype = vim.bo.filetype
		if filetype ~= nil then
			runny.buffer = vim.api.nvim_get_current_buf()
			return runny.buffer
		else
			return vim.api.nvim_get_current_buf()
		end
end

M.get_bufnr()


return M
