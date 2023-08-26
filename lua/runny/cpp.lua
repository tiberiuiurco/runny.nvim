local runny = require("runny")

local M = {}

function M.cNr()
vim.api.nvim_command('w')
	local compilation_cmd = {"clang++"}
	local filenames = vim.fn.systemlist("find . -name '*.cpp'")
	for _, filename in ipairs(filenames) do
			table.insert(compilation_cmd, filename)
	end

	local bufnr = runny.buffer
	local yanked_text = vim.fn.getreg('a')
	vim.fn.jobstart(compilation_cmd, {
		stdout_buffered = true,
		on_stdout = function(_, _)
			local runner_id = vim.fn.jobstart({ "./a.out" }, {
				stdout_buffered = true,
				on_stdout = function(_, data)
					if data then
						vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, data)
					end
				end,
			})
	vim.fn.jobsend(runner_id, {yanked_text})
		end,
	})
end

return M


