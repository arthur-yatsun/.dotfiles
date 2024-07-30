local options = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", options)
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
keymap("n", "<C-h>", "<C-w>h", options)
keymap("n", "<C-j>", "<C-w>j", options)
keymap("n", "<C-k>", "<C-w>k", options)
keymap("n", "<C-l>", "<C-w>l", options)

-- resize with arrows
keymap("n", "<C-Up>", ":resize -10<CR>", options)
keymap("n", "<C-Down>", ":resize +10<CR>", options)
keymap("n", "<C-Right>", ":vertical resize -10<CR>", options)
keymap("n", "<C-Left>", ":vertical resize +10<CR>", options)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", options)
keymap("n", "<S-h>", ":bprevious<CR>", options)
keymap("n", "g1", "<Cmd>BufferLineGoToBuffer 1<CR>", options)
keymap("n", "g2", "<Cmd>BufferLineGoToBuffer 2<CR>", options)
keymap("n", "g3", "<Cmd>BufferLineGoToBuffer 3<CR>", options)
keymap("n", "g4", "<Cmd>BufferLineGoToBuffer 4<CR>", options)
keymap("n", "g5", "<Cmd>BufferLineGoToBuffer 5<CR>", options)
keymap("n", "g6", "<Cmd>BufferLineGoToBuffer 6<CR>", options)
keymap("n", "g7", "<Cmd>BufferLineGoToBuffer 7<CR>", options)
keymap("n", "g8", "<Cmd>BufferLineGoToBuffer 8<CR>", options)
keymap("n", "g9", "<Cmd>BufferLineGoToBuffer 9<CR>", options)
keymap("n", "<C-o>", "<Cmd>Bdelete!<cr>", options)
keymap("n", "j;", "<Cmd>e#<cr>", options)

-- move text up and down
keymap("n", "<leader>j", "<Esc>:m .+1<CR>==", options)
keymap("n", "<leader>k", "<Esc>:m .-2<CR>==", options)

-- change indent
keymap("v", "<", "<gv", options)
keymap("v", ">", ">gv", options)

-- real copy and paste
-- https://stackoverflow.com/questions/11993851/how-to-delete-not-cut-in-vim
keymap("n", "d", '"_d', options)
keymap("v", "d", '"_d', options)
keymap("v", "p", '"_dP', options)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", options)
keymap("x", "K", ":move '<-2<CR>gv-gv", options)

-- stay in the middle
keymap("n", "<C-d>", "<C-d>zz", options)
keymap("n", "<C-u>", "<C-u>zz", options)
keymap("n", "n", "nzzzv", options)
keymap("n", "N", "Nzzzv", options)

-- when in block mode press ctrl + c instead of esc
keymap("i", "<C-c>", "<Esc>", options)
-- telescope --
keymap(
	"n",
	"<leader>a",
	"<cmd>lua require'telescope.builtin'.find_files({layout_strategy='center', layout_config={anchor= 'N', height=0.4, width=0.7}})<cr>",
	options
)
-- keymap(
-- 	"n",
-- 	"<leader>s",
-- 	"<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find({layout_strategy='center', layout_config={anchor= 'N', height=0.4, width=0.7}})<cr>",
-- 	options
-- )
keymap("n", "<leader>d", "<cmd>lua require'telescope.builtin'.lsp_references()<cr>", options)
keymap(
	"n",
	"<leader>f",
	"<cmd>lua require'telescope.builtin'.live_grep({disable_coordinates=true, layout_strategy='center', layout_config={anchor= 'N', height=0.4, width=0.7}})<cr>",
	options
)
keymap("n", "<leader>o", "<cmd>Telescope buffers<cr>", options)
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", options)

keymap("n", "<leader>b", "<C-V>", options)

keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>", options)
--
---- nvim tree --
--keymap("n", "<leader>e", ":NvimTreeToggle<cr>", options)
--
---- reload config
--keymap("n", "<leader><leader>", "<cmd>source $MYVIMRC<cr>", options)
--
---- gitsigns
--keymap("n", "<leader>,", "<cmd>lua require('gitsigns').preview_hunk()<cr>", options)
--keymap("n", ",<leader>", "<cmd>lua require('gitsigns').reset_hunk()<cr>", options)
--keymap("n", ",", "<cmd>lua require('gitsigns').next_hunk()<cr>", options)
