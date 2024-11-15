-- Remap space as leader key
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.swapfile = false
vim.opt.ignorecase = true
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- smart indent
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.sidescrolloff = 5 -- how many lines to scroll when using the scrollbar
vim.opt.autoindent = true
vim.opt.signcolumn = "yes"
vim.opt.sessionoptions = "buffers,curdir,folds,help,tabpages,terminal,globals"
-- vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.updatetime = 100
vim.opt.writebackup = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.jumpoptions = "view"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.cmdheight = 0
vim.opt.list = true
vim.opt.splitkeep = "screen"
vim.opt.syntax = "on"
vim.opt.wrap = false
vim.opt.spelloptions = "camel,noplainbuffer"
vim.opt.foldlevel = 99
-- vim.o.foldcolumn = "1"
-- vim.o.foldlevelstart = 99
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true
vim.opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "/",
	eob = " ",
}
vim.opt.mousemoveevent = true
vim.opt.termguicolors = true

-- command completion
vim.opt.wildmode = "longest:full:full"
vim.opt.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*DS_STORE,*.db"

-- terminal fix
vim.o.shellcmdflag = "-s"

-- Additional functions
-- Detect OS
if vim.fn.exists('g:os') == 0 then
    local is_windows = vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 or vim.fn.has("win16") == 1
    if is_windows then
        vim.g.os = "Windows"
    else
        local uname_output = vim.fn.system('uname')
        vim.g.os = string.gsub(uname_output, '\n', '')
    end
end
