vim.cmd [[
    autocmd BufWritePre *.js*,*.ts*,*.*css Neoformat
]]

vim.cmd [[
    autocmd BufReadPost,FileReadPost * normal zR
]]
