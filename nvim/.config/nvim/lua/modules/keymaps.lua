local opts = {noremap = true, silent = true}

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- normal --
-- better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize with arrows
keymap("n", "<C-Up>", ":resize -10<CR>", opts)
keymap("n", "<C-Down>", ":resize +10<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -10<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +10<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "g1", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "g2", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "g3", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "g4", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "g5", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "g6", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "g7", "<Cmd>BufferLineGoToBuffer 7<CR>", opts)
keymap("n", "g8", "<Cmd>BufferLineGoToBuffer 8<CR>", opts)
keymap("n", "g9", "<Cmd>BufferLineGoToBuffer 9<CR>", opts)
keymap("n", "<C-o>", "<Cmd>Bdelete!<cr>", opts)
keymap("n", "j;", "<Cmd>e#<cr>", opts)


-- harpoon --
keymap("n", "<leader>y", "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
keymap("n", "<leader>h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "gn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", opts)
keymap("n", "gp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", opts)

-- move text up and down
keymap("n", "<leader>j", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<leader>k", "<Esc>:m .-2<CR>==", opts)

-- change indent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- real copy and paste
-- https://stackoverflow.com/questions/11993851/how-to-delete-not-cut-in-vim
keymap("n", "d", '"_d', opts)
keymap("v", "d", '"_d', opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- telescope --
keymap("n", "<leader>a", "<cmd>lua require'telescope.builtin'.find_files({layout_strategy='center', layout_config={anchor= 'N', height=0.4, width=0.7}})<cr>", opts)
keymap("n", "<leader>s", "<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find({layout_strategy='center', layout_config={anchor= 'N', height=0.4, width=0.7}})<cr>", opts)
keymap("n", "<leader>d", "<cmd>lua require'telescope.builtin'.lsp_references()<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.live_grep({disable_coordinates=true, layout_strategy='center', layout_config={anchor= 'N', height=0.4, width=0.7}})<cr>", opts)
keymap("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)


-- nvim tree --
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- reload config
keymap("n", "<leader>z", "<cmd>lua require('nvim-reload').Restart()<cr>", opts)

-- gitsigns
keymap("n", "<leader>,", "<cmd>lua require('gitsigns').preview_hunk()<cr>", opts)
keymap("n", ",<leader>", "<cmd>lua require('gitsigns').reset_hunk()<cr>", opts)
keymap("n", ",", "<cmd>lua require('gitsigns').next_hunk()<cr>", opts)
