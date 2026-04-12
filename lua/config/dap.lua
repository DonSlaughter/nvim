local dap = require("dap")

-- Adapter (GDB)
dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
}

-- C / C++
dap.configurations.cpp = {
    {
        name = "Launch (GDB)",
        type = "gdb",
        request = "launch",
        program = function()
            return vim.fn.input("Executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
    },
}

dap.configurations.c = dap.configurations.cpp
