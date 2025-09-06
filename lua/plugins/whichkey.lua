local wk = require("which-key")

wk.add({

    {
    { "<leader>c", group = "Comment" },
    { "<leader>cl", desc = "Comment Line" },
    { "<leader>e", desc = "File Manager" },
    { "<leader>f", group = "Find" },
    { "<leader>fb", desc = "Find Buffer" },
    { "<leader>ff", desc = "Find File" },
    { "<leader>fh", desc = "Find Help" },
    { "<leader>fw", desc = "Find Text" },
    { "<leader>g", group = "Git" },
    { "<leader>gb", desc = "Git branches" },
    { "<leader>gc", desc = "Git commits" },
    { "<leader>gs", desc = "Git status" },
    { "<leader>l", group = "LSP" },
    { "<leader>lD", desc = "Hover diagnostic" },
    { "<leader>la", desc = "Action" },
    { "<leader>ld", desc = "Diagnostic" },
    { "<leader>lf", desc = "Format" },
    { "<leader>lr", desc = "Rename" },
    { "<leader>ls", desc = "Symbol" },
}
})
