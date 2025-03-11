return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "python", "dart", "go", "markdown", "bash", "c", "html", "luadoc", "markdown_inline", "vim", "vimdoc"},
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,
        })
    end
}
