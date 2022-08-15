local ok, nvimtree = pcall(require, "nvim-tree")
if not ok then
  return
end

nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "",
        },
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})

vim.keymap.set('n', '<Leader>t', '<Cmd>NvimTreeToggle<CR>')
vim.keymap.set('n', '<Leader>f', '<Cmd>NvimTreeFindFileToggle<CR>')
