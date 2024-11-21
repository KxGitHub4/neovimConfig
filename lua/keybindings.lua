vim.g.mapleader = " "

local function Y(mode, keys, command, options)

   vim.keymap.set(mode,keys,command,options) 

end

Y('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

local builtin = require('telescope.builtin')

Y('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
Y('n', '<leader>fg', builtin.live_grep, { desc = "Live Grep" })
Y('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers" })
Y('n', '<leader>fh', builtin.help_tags, { desc = "Help Tags" })
Y('n', '<leader>fo', builtin.oldfiles, { desc = "Recently Used Files" })
Y('n', '<leader>gc', builtin.git_commits, { desc = "Git Commits" })
Y('n', '<leader>gs', builtin.git_status, { desc = "Git Status" })




local function flashSearch()
   require('flash').jump() 
end

local function flashTreesitter() 
    require("flash").treesitter() 
end

Y('n','s',flashSearch, {desc = "flash"})
Y('n','S', flashTreesitter, {desc = "flashTreesitter"})

