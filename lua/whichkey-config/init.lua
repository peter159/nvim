local wk = require("which-key")
local mappings = {
  qq = {":q<CR>", "Quit"},
  fs = {":w<CR>", "Save current file"},
  fed = {":e ~/.config/nvim/init.lua<CR>", "Go to Nvim config"},
  ft = {":NvimTreeToggle<CR>", "Open file tree"},
  wd = {":bdelete<CR>", "Close current buffer"},
  ff = {":Telescope find_files<CR>", "Telescope find files"},
  fr = {":Telescope oldfiles<CR>", "Telescope find files"},
  r = {":Telescope live_grep<CR>", "Telescope live grep"},
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
