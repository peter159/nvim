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
      q = {":qa<CR>", "Quit"}
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
      j = {":Telescope file_browser<CR>", "Telescope find browser"},
  },

  w = {
    name = "window",
    s = {":split<CR>", "horizental split"},
    v = {":vsplit<CR>", "horizental split"},
    d = {":q<CR>", "close window"},
    h = {"<C-w>h", "move window focus left"},
    l = {"<C-w>l", "move window focus right"},
    k = {"<C-w>k", "move window focus up"},
    j = {"<C-w>k", "move window focus down"},
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
    name = "lsp",
    g = {
      name = "goto",
      d = {"<Cmd>lua vim.lsp.buf.definition()<CR>", "go to definition"},
      D = {"<Cmd>lua vim.lsp.buf.declaration()<CR>", "go to declaration"},
      i = {"<cmd>lua vim.lsp.buf.implementation()<CR>", "go to implementation"},
      r = {"<cmd>lua vim.lsp.buf.references()<CR>", "go to reference"}
    },
    t = {"<cmd>lua vim.lsp.buf.type_definition()<CR>", "type definition"},
    w = {
      name = "workspace",
      a = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "add workspace"},
      r = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "remove workspace"},
      l = {"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "list workspaces"}
    }
  },
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
