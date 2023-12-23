local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
--keymap("n", "<C-j>", "<C-w>j", opts)
--keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
-- keymap("n", "<leader>pv", ":Neotree<cr>", opts)

--Explorer 
--keymap("n", "<leader>e", ":Lex 30<cr>", opts) 

--Telescope 
keymap("n", "<leader>pf", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
keymap("n", "<leader>ps", "<cmd> Telescope live_grep<cr>", opts)
keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.git_files()<cr>", opts)

-- Resize with arrows
--keymap("n", "<C-Up>", ":resize -2<CR>", opts)
--keymap("n", "<C-Down>", ":resize +2<CR>", opts)
--keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
--keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
--keymap("n", "<S-l>", ":bnext<CR>", opts)
--keymap("n", "<S-h>", ":bprevious<CR>", opts)

---Normal---
-- Move text up and down
--keymap("n", "<A-j>", ":m .+1<CR>==", opts)
--keymap("n", "<A-k>", ":m <CR>==", opts)


-- Insert --
-- Press jk fast to exit insert mode 
--keymap("i", "jk", "<ESC>", opts)
--keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

--keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
--keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
--keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
--keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

--Exiting 
keymap("n", "<leader>q", ":q! <CR>",opts)
keymap("n", "<leader>w", ":w <CR>",opts)
keymap("n", "<leader>z", ":wq <CR>",opts)


-- Others 
keymap("n", "<ESC>", ":noh <CR>",opts) -- Remove Highlight

