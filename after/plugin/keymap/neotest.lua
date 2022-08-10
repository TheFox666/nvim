local nnoremap = require("workspace.keymap").nnoremap

local silent = { silent = true }

nnoremap("<Leader>tn", function() require('neotest').run.run() end, silent) 
nnoremap("<Leader>tf", function() require('neotest').run.run(vim.fn.expand("%")) end, silent) 
nnoremap("<Leader>ts", function() require('neotest').run.run({suite=true}) end, silent) 
nnoremap("<Leader>tl", function() require('neotest').run.run_last() end, silent) 
