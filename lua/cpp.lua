local runny = require("runny")
local utils = require("runny.utils")

local M = {}

function M.cNr()
	local current_file = vim.fn.expand('%') -- Get the current file's name
	vim.fn.jobstart({"clang++", current_file}, {
			stdout_buffered = true,
			on_stdout = function(_, data1)
					vim.fn.jobstart({"./a.out"}, {
							stdout_buffered = true,
							on_stdout = function(_, data)
									if data then
											vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, data)
									end
							end,
					})
			end,
	})
end

return M
