local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"

vim.filetype.add({
  pattern = {
    [".*%.ipynb.*"] = "python",
    -- uses lua pattern matching
    -- rathen than naive matching
  },
})

local function notify(cmd)
  return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
end

-- mimicking telescope
keymap("n", "<Leader>ff", notify("workbench.action.quickOpen"), { silent = true })
keymap("n", "<Leader>cc", notify("workbench.action.showCommands"), { silent = true })
keymap("n", "<Leader>fg", notify("workbench.action.findInFiles"), { silent = true })
keymap("n", "<Leader>ee", notify("workbench.action.toggleSidebarVisibility"), { silent = true })
keymap("n", "<Leader>tt", notify("workbench.action.terminal.toggleTerminal"), { silent = true })

-- document actions
keymap("n", "<Leader>fm", notify("editor.action.formatDocument"), { silent = true })

-- window splits
keymap("n", "<Leader>sl", notify("workbench.action.splitEditor"), { silent = true })
keymap("n", "<Leader>sj", notify("workbench.action.splitEditorDown"), { silent = true })
