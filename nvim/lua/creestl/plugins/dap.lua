-- C debugger

return {
    "mfussenegger/nvim-dap",
    config = function()
        local keymap = vim.keymap

        keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })
        keymap.set("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start or Continue execution" })

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

        -- Configuration for C debugging
        dap.configurations.c = {
            {
                type = "codelldb",
                request = "launch",
                program = function ()
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
                args = function ()
                    local argv = {}
                    arg = vim.fn.input(string.format("Input argv (if any): "))
                    for a in string.gmatch(arg, "%S+") do
                        table.insert(argv, a)
                    end
                    vim.cmd('echo ""')
                    return argv
                end,

                cwd = "${workspaceFolder}",

                -- Comment it not to stop at main
                stopAtEntry = true,

                MIMode = "gdb",
                miDebuggerPath = "/usr/bin/gdb",
                setupCommands = {
                    {
                        text = "-enable-pretty-printing",
                        description = "enable pretty printing",
                        ignoreFailures = false,
                    },
                },
            },
        }

        -- Configuration for CPP debugging
        dap.configurations.cpp = dap.configurations.c
    end,
}
