local keymap = vim.keymap
local n_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', '<C-BS>', 'vb"_d')
keymap.set('i', '<C-BS>', '<C-w>')

-- save
keymap.set('n', '<C-s>', ':w<CR>')
keymap.set('i', '<C-s>', '<C-o>:w<CR>', { noremap = true })

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- quit buffer

keymap.set('n', '<leader>q', ':bd<CR>', { silent = true })

-- lint 
-- keymap.set('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<cr>', { silent = true })


-- search text
-- keymap.set('n', '<C-F>', '/', { silent = true })
-- keymap.set('v', ':<C-u>%s/<C-r>=GetVisualSelection()<CR>//g<left><left>')
-- keymap.set('n', ":<C-u>%s/<C-r>=Escape(expand('<cword>'))<CR>//g<left><left>")
-- keymap.set('i', "<esc>:%s/<C-r>=Escape(expand('<cword>'))<CR>//g<left><left>")

