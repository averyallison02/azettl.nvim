local M = {}

function M.setup(opts)
	setup_opts(opts)
	setup_commands(opts)
end

function setup_opts(opts)
	if opts.zettl_command == nil then
		opts.zettl_command = "Zettl"
	end
	if opts.notes_dir == nil then
		opts.notes_dir = "~/notes"
	end
	if opts.titler == nil then
		opts.titler = "date '+%Y%m%d%H%M%S.md'"
	end
end

function setup_commands(opts)
	vim.api.nvim_create_user_command(opts.zettl_command, function(zettl_opts)
		local command = zettl_opts.fargs[1]
		if command == "new" then
			zettl_new(opts.notes_dir, opts.titler)
		end
	end, { nargs = 1 })
end

function zettl_new(notes_dir, titler)
	local title = vim.fn.system(titler .. " | tr -d '\n'")
	vim.cmd("edit " .. notes_dir .. "/" .. title)
end

return M
