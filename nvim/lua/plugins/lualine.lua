return {
	'nvim-lualine/lualine.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},
	config = function()
		local mode = {
			'mode',
			fmt = function(str)
				return ' ' .. str
			end
		}

		local diff = {
			'diff',
			colored = true,
			symbols = { added = ' ', modified = ' ', removed = ' ' },
		}

		local diagnostics = {
			'diagnostics',
			sources = { 'nvim_diagnostic' },
			sections = { 'error', 'warn' },
			symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
			colored = true,
			update_in_insert = false,
			always_visible = true
		}

		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme =	'auto',
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
				disabled_filetypes = {
					statusline = {'neo-tree'},
					tabline = {'neo-tree'}
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
					refresh_time = 16, -- ~60fps
					events = {
						'WinEnter',
						'BufEnter',
						'BufWritePost',
						'SessionLoadPost',
						'FileChangedShellPost',
						'VimResized',
						'Filetype',
						'CursorMoved',
						'CursorMovedI',
						'ModeChanged',
					},
				}
			},
			sections = {
				lualine_a = {mode},
				lualine_b = {'branch', diff},
				lualine_c = {diagnostics},
				lualine_x = {'fileformat', 'filetype'},
				lualine_y = {'progress'},
				lualine_z = {'location'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end
}
