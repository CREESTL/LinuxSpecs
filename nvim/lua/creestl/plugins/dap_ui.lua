-- UI for Dap C debugger

return {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
      -- Custom icons
      vim.fn.sign_define(
          "DapBreakpoint",
          { text = "●", texthl = "", linehl = "debugBreakpoint", numhl = "debugBreakpoint" }
      )
      vim.fn.sign_define(
          "DapBreakpointCondition",
          { text = "◆", texthl = "", linehl = "debugBreakpoint", numhl = "debugBreakpoint" }
      )
      vim.fn.sign_define("DapStopped", { text = "▶", texthl = "", linehl = "debugPC", numhl = "debugPC" }) 
    end
}
