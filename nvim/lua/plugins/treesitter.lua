return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
	},
	config = function()
		require('nvim-treesitter.configs').setup {
			highlight = {
				enable = true
			},
			indent = {
				enable = true
			},
			autotag = {
				enable = true
			},
			auto_install = true,
			ensure_installed = {
				'bash',
				'css',
				'csv',
				'desktop',
				'dockerfile',
				'git_config',
				'git_rebase',
				'gitattributes',
				'gitcommit',
				'gitignore',
				'go',
				'goctl',
				'graphql',
				'hcl',
				'helm',
				'html',
				'hyprlang',
				'javascript',
				'json',
				'json5',
				'lua',
				'luadoc',
				'markdown',
				'markdown_inline',
				'nginx',
				'python',
				'ql',
				'qmldir',
				'qmljs',
				'regex',
				'scss',
				'sql',
				'ssh_config',
				'terraform',
				'toml',
				'tsx',
				'typescript',
				'vim',
				'vimdoc',
				'xml',
				'yaml'
			}
		}
	end
}
