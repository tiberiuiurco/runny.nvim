-- local runny = require("runny")

local M = {}

-- Function to input the buffer number from the user
function M.get_bufnr()
		-- return vim.api.nvim_get_current_buf()
		local filetype = vim.bo.filetype
		if filetype ~= nil then
			runny.buffers[filetype] = vim.api.nvim_get_current_buf()
			print(runny.buffers[filetype])
			return runny.buffers[filetype]
		else
			print(vim.api.nvim_get_current_buf())
			return vim.api.nvim_get_current_buf()
		end
end

M.get_bufnr()


return M
