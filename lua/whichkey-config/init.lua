local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end
local toggle_lazygit = function()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})
  return lazygit:toggle()
end
local mappings = {
  q = {
    name = "quit",
      q = {":q<CR>", "Quit"}
  },
  
  ["'"] = {":ToggleTerm<CR>", "toggle terminal"},
  r = {":Telescope live_grep<CR>", "Telescope live grep"},

  f = {
    name = "File",
      e = {name="editor", d = {":e ~/.config/nvim/init.lua<CR>", "edit config"}},
      s = {":w<CR>", "save current buffer"},
      r = {":Telescope oldfiles<CR>", "recent files"},
      f = {":Telescope find_files<CR>", "Telescope find files"},
      t = {":NvimTreeToggle<CR>", "toggle filetree pannel"},
  },

  w = {
    name = "window",
    s = {":split<CR>", "horizental split"},
    v = {":vsplit<CR>", "horizental split"},
  },

  b = {
    name = "buffer",
      x = {":bdelete<CR>", "kill current buffer"},
      I = {":Telescope buffers<CR>", "list all buffer"},
  },

  j = {
    name = "jump",
      j = {"::HopChar2<CR>", "jump char 2"},
  },

  t = {
    name = "terminal",
      t = {":ToggleTerm<cr>", "toggle terminal"},
      f = {toggle_float, "toggle Floating Terminal"},
  },

  g = {
    name = "git",
      s = {":Neogit<CR>", "stash buffer"},
  },

  l = {
    name = "LSP",
      i =  {":LspInfo<CR>",  "Connected Language Servers"},
      A =  {"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>",  "Add workspace folder"},
      R =  {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>",  "Remove workspace folder"},
      l =  {"<cmd>lua print(vim.inspect(vim.lsp.buf.add_workspace_folder()))<CR>",  "List workspace folder"},
      D =  {"<cmd>lua vim.lsp.buf.type_definition()<CR>",  "Type definition"},
      r =  {"<cmd>lua vim.lsp.buf.rename()<CR>",  "Rename"},
      a =  {"<cmd>lua vim.lsp.buf.code_action()<CR>",  "Code actions"},
      e =  {"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>",  "Show line diagnostics"},
      q =  {"<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>",  "Show loclist"},
  },
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
