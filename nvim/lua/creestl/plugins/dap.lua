-- C debugger

return {
    "mfussenegger/nvim-dap",
    config = function()
        local keymap = vim.keymap

        keymap.set("n", '<F5>', function() require('dap').continue() end, { desc = "Start or continue execution" })
        keymap.set('n', '<F10>', function() require('dap').step_over() end, { desc = "Step over" })
        keymap.set('n', '<F11>', function() require('dap').step_into() end, { desc = "Step into" })
        keymap.set('n', '<F12>', function() require('dap').step_out() end, { desc = "Step out" })
        keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end, { desc = "Toggle breakpoint" })
        keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end, { desc = "Set breakpoint" })

        local dap = require("dap")

        -- codelldb
        dap.adapters.codelldb = {
            type = "server",
            port = "${port}",
            executable = {
                command = "/usr/bin/codelldb",
                args = { "--port", "${port}" },
            },
        }

        dap.configurations.c = {
            {
                name = "Debug C",
                type = "codelldb",
                request = "launch",
                program = function()
                    -- Compile and return exec name
                    local filetype = vim.bo.filetype
                    -- Full path to current .c file with extension
                    local filename = vim.fn.expand("%")
                    -- Full path to the same directory and same file name but with no extension (executable)
                    local basename = vim.fn.expand('%:p:r')
                    local makefile = os.execute("(ls | grep -i makefile)")
                    print(string.format("gcc -g -o %s %s", basename, filename))
                    if makefile == "makefile" or makefile == "Makefile" then
                        os.execute("make debug")
                    else
                        if filetype == "c" then
                            os.execute(string.format("gcc -g -o %s %s", basename, filename))
                        else
                            os.execute(string.format("g++ -g -o %s %s", basename, filename))
                        end
                    end
                    return basename
                end,

                -- Args passed to the program
                args = function()
                    local argv = {}
                    arg = vim.fn.input(string.format("Input argv (if any): "))
                    for a in string.gmatch(arg, "%S+") do
                        table.insert(argv, a)
                    end
                    vim.cmd('echo ""')
                    return argv
                end,


                -- Change working directory for the program
                cwd = "${workspaceFolder}",

            }
        }
    end,
}
