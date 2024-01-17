vim.cmd [[
    autocmd BufWritePre *.js*,*.ts* Neoformat
]]

vim.cmd [[
    autocmd BufReadPost,FileReadPost * normal zR
]]
