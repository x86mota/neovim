return {
	'akinsho/bufferline.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	},
	config = function()
		require('bufferline').setup {
			options = {
				mode = buffer,
				themable = true,
				numbers = 'none',
				close_command = "bdelete! %d",
				right_mouse_command = "bdelete! %d",
				left_mouse_command = "buffer %d",
				middle_mouse_command = nil,
				indicator = {
					-- icon = '│',
					style = 'none' -- 'icon' | 'underline' | 'none',
				},
				buffer_close_icon = '󰅖',
				modified_icon = '● ',
				close_icon = ' ',
				left_trunc_marker = ' ',
				right_trunc_marker = ' ',
				icon_pinned = '󰐃',
				max_name_length = 30,
				max_prefix_length = 30,
				truncate_names = false,
				tab_size = 24,
				diagnostics = false,
				diagnostics_update_in_insert = false,
				diagnostics_update_on_event = false,
				color_icons = true,
				show_buffer_icons = true,
				show_buffer_close_icons = false,
				show_close_icon = false,
				show_tab_indicators = false,
				persist_buffer_sort = true,
				separator_style = '', -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
				enforce_regular_tabs = true,
				always_show_bufferline = true,
				sort_by = 'insert_at_end'
			},
			highlights = {
				buffer_selected = {
					bold = true,
					italic = false,
				}
			}
		}

		vim.cmd('hi TabLineFill guibg=NONE ctermbg=NONE')
	end
}
