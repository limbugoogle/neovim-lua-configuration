local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		-- formatting.uncrustify,
		diagnostics.pylint,
		formatting.stylua,
		formatting.prettier,
		-- formatting.black,
		formatting.gofmt,
		formatting.shfmt,
		formatting.clang_format,
		formatting.cmake_format,
		formatting.dart_format,
		formatting.lua_format.with({
			extra_args = {
				"--no-keep-simple-function-one-line",
				"--no-break-after-operator",
				"--column-limit=100",
				"--break-after-table-lb",
				"--indent-width=2",
			},
		}),
		-- formatting.isort,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			-- client.resolved_capabilities.document_formatting = false
			-- client.resolved_capabilities.document_range_formatting = false
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
			vim.cmd([[
                augroup LspFormatting
                    autocmd! * <buffer>
                    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
                augroup END
                ]])
		end
		if client.resolved_capabilities.document_highlight then
			vim.cmd("autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()")
		end
		vim.cmd([[
      augroup document_highlight
        autocmd! * <buffer>
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]])
	end,
})
