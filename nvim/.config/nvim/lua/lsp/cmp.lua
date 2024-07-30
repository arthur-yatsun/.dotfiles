local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
		{ name = "nvim_lua" },
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		--["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),

		["<CR>"] = cmp.mapping.confirm({ select = true }),
		-- ["<Tab>"] = cmp.mapping(function(fallback)
		-- 	if cmp.visible() then
		-- 		cmp.select_next_item()
		-- 	end
		-- end, { "i", "s" }),

		--['<C-r>'] = cmp.mapping.complete(),
		--['<C-f>'] = cmp_action.luasnip_jump_forward(),
		--['<C-b>'] = cmp_action.luasnip_jump_backward(),
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
	}),
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			-- Kind icons
			--vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
			-- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
			vim_item.menu = ({
				nvim_lsp = "|LSP",
				luasnip = "|Snippet",
				buffer = "|Buff",
				path = "|Path",
			})[entry.source.name]
			return vim_item
		end,
	},
})

