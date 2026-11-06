local M = {}

function M.setup(opts)
	setup_opts(opts)
	setup_commands(opts)
end

function setup_opts(opts)
	if opts.zettl_command == nil then
		opts.zettl_command = "Zettl"
	end
end

function setup_commands(opts)
	vim.api.nvim_create_user_command(opts.zettl_command, function(zettl_opts)
		local command = zettl_opts.fargs[1]
	end, { nargs = 1 })
end

return M
