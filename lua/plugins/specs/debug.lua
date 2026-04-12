return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({})
        end,
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            require("config.dap")

            local map = vim.keymap.set
            local dap = require("dap")

            map("n", "<leader>db", dap.toggle_breakpoint)
            map("n", "<leader>dc", dap.continue)
            map("n", "<leader>di", dap.step_into)
            map("n", "<leader>do", dap.step_over)
            map("n", "<leader>dO", dap.step_out)
            map("n", "<leader>dr", dap.repl.open)
            end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            { "mfussenegger/nvim-dap" },
            { "nvim-neotest/nvim-nio"},
        },
        config = function()
            require("config.dapui")
        end,
    },
}
