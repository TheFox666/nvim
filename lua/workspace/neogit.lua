local neogit = require('neogit')
local diffview = require('diffview')
local nnoremap = require('workspace.keymap').nnoremap

neogit.setup {
    integrations = {
        diffview = true
    },
}

nnoremap("<leader>gs", function()
    neogit.open({ })
end);

nnoremap("<leader>ga", "<cmd>!git fetch --all<CR>");
