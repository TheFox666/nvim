local dap = require('dap')
local dapui = require('dapui')
local Remap = require("workspace.keymap")
local nnoremap = Remap.nnoremap

 
nnoremap("<F5>",function() dap.continue()end, silent)
nnoremap("<F10>", function() dap.step_over()end, silent)
nnoremap("<F11>", function() dap.step_into()end, silent)
nnoremap("<F12>", function() dap.step_out()end, silent)
nnoremap("<Leader>b", function() dap.toggle_breakpoint() end, silent)
nnoremap("<Leader>B", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, silent)
nnoremap("<Leader>lp", function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, silent)
nnoremap("<Leader>dr", function() dap.repl.open() end, silent)
nnoremap("<Leader>dl", function() dap.run_last() end, silent)
nnoremap("<Leader>cab", function() dap.clear_breakpoints() end, silent)
nnoremap("<Leader>lib", function() dap.list_breakpoints() end, silent)
nnoremap("<F4>", function() dapui.toggle() end, silent)
