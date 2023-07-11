--require('sonokai').setup({
    -- disable_background = true
    --})
    --
    function ColorMyPencils()

vim.cmd('colorscheme rose-pine')
--        require("andromeda").setup()
        vim.cmd([[
        hi Normal guibg=none ctermbg=none
        hi LineNr guibg=none ctermbg=none
        hi Folded guibg=none ctermbg=none
        hi NonText guibg=none ctermbg=none
        hi SpecialKey guibg=none ctermbg=none
        hi VertSplit guibg=none ctermbg=none
        hi SignColumn guibg=none ctermbg=none
        hi EndOfBuffer guibg=none ctermbg=none
        ]])
--
--        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end

    ColorMyPencils()

