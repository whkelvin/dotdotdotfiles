local present, cmp = pcall(require, "cmp")

if not present then
   return
end

vim.opt.completeopt = "menu, menuone, noinsert"

local default = {
   snippet = {
      expand = function(args)
         require("luasnip").lsp_expand(args.body)
      end,
   },

--   formatting = {
--      format = function(entry, vim_item)
--         local icons = require "plugins.configs.lspkind_icons"
--         vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
--
--         vim_item.menu = ({
--            nvim_lsp = "[LSP]",
--            nvim_lua = "[Lua]",
--            buffer = "[BUF]",
--         })[entry.source.name]
--
--         return vim_item
--      end,
--   },
   mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<Esc>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({
       behavior = cmp.ConfirmBehavior.Insert,
       select = true,
    })
  },
  sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
   }
}

local M = {}
M.setup = function(override_flag)
   if override_flag then
      default = require("core.utils").tbl_override_req("nvim_cmp", default)
   end
   cmp.setup(default)
end

return M 
