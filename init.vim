

set splitright
set splitbelow
set nu rnu 
set noswf

call plug#begin('~/.vim/plugged')
Plug '~/.vim/plugged/plenary.nvim'
Plug '~/.vim/plugged/telescope.nvim'
Plug '~/.vim/plugged/popup.nvim'
Plug '~/.vim/plugged/project.nvim'
Plug '~/.vim/plugged/nvim-tree.lua'
call plug#end()

let mapleader=" "
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>gs <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ts <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <leader>cb <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>ta <cmd>lua require('telescope.builtin').tags()<cr>
nnoremap <leader>ct <cmd>lua require('telescope.builtin').current_buffer_tags()<cr>
nnoremap <leader>gf <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>cp <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>cf <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>gt <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <leader>st <cmd>lua require('telescope.builtin').git_stash()<cr>
nnoremap <leader>bn <cmd>lua require('telescope.builtin').builtin()<cr>
nnoremap <leader>pr <cmd>lua require('telescope.builtin').resume()<cr>
nnoremap <leader>pi <cmd>lua require('telescope.builtin').pickers()<cr>
nnoremap <leader>pl <cmd>lua require('telescope.builtin').planets()<cr>
nnoremap <leader>sy <cmd>lua require('telescope.builtin').symbols()<cr>
nnoremap <leader>co <cmd>lua require('telescope.builtin').commands()<cr>
nnoremap <leader>qf <cmd>lua require('telescope.builtin').quickfix()<cr>
nnoremap <leader>qh <cmd>lua require('telescope.builtin').quickfixhistory()<cr>
nnoremap <leader>ll <cmd>lua require('telescope.builtin').loclist()<cr>
nnoremap <leader>of <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <leader>ch <cmd>lua require('telescope.builtin').command_history()<cr>
nnoremap <leader>sh <cmd>lua require('telescope.builtin').search_history()<cr>
nnoremap <leader>vo <cmd>lua require('telescope.builtin').vim_options()<cr>
nnoremap <leader>ht <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>mp <cmd>lua require('telescope.builtin').man_pages()<cr>
nnoremap <leader>rl <cmd>lua require('telescope.builtin').reloader()<cr>
nnoremap <leader>bu <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>cs <cmd>lua require('telescope.builtin').colorscheme()<cr>
nnoremap <leader>ma <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <leader>re <cmd>lua require('telescope.builtin').registers()<cr>
nnoremap <leader>km <cmd>lua require('telescope.builtin').keymaps()<cr>
nnoremap <leader>ft <cmd>lua require('telescope.builtin').filetypes()<cr>
nnoremap <leader>hl <cmd>lua require('telescope.builtin').highlights()<cr>
nnoremap <leader>ac <cmd>lua require('telescope.builtin').autocommands()<cr>
nnoremap <leader>ss <cmd>lua require('telescope.builtin').spell_suggest()<cr>
nnoremap <leader>tk <cmd>lua require('telescope.builtin').tagstack()<cr>
nnoremap <leader>jl <cmd>lua require('telescope.builtin').jumplist()<cr>
nnoremap <leader>lr <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>li <cmd>lua require('telescope.builtin').lsp_incoming_calls()<cr>
nnoremap <leader>lo <cmd>lua require('telescope.builtin').lsp_outgoing_calls()<cr>
nnoremap <leader>ld <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <leader>lt <cmd>lua require('telescope.builtin').lsp_type_definitions()<cr>
nnoremap <leader>lm <cmd>lua require('telescope.builtin').lsp_implementations()<cr>
nnoremap <leader>ds <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
nnoremap <leader>ws <cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>
nnoremap <leader>dw <cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>
nnoremap <leader>dg <cmd>lua require('telescope.builtin').diagnostics()<cr>
nnoremap <leader>ps <cmd>lua require('telescope.builtin').grep_string({layout_strategy='vertical',layout_config={preview_cutoff=1,width=0.9}, search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>hh <cmd>lua require('telescope.builtin').keymaps()<cr>
nnoremap <A-f>      <cmd>lua require('telescope.builtin').find_files({layout_strategy='bottom_pane',layout_config={preview_cutoff=7,width=0.9,height=0.9}})<cr>
nnoremap <A-g>      <cmd>lua require('telescope.builtin').live_grep({layout_strategy='vertical',layout_config={preview_cutoff=1,width=0.9}})<cr>
nnoremap <A-c>      <cmd>lua require('telescope.builtin').git_bcommits({layout_strategy='bottom_pane',layout_config={preview_cutoff=7,width=0.9,height=0.9}})<cr>

lua << EOF
require("nvim-tree").setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
})
EOF
   
lua << EOF
  require("telescope").setup {
  }
EOF

lua << EOF
  require("project_nvim").setup {
  }
EOF

nnoremap <A-v>      <cmd>vnew<cr>
nnoremap <A-b>      <cmd>new<cr>
nnoremap <A-q>      <cmd>close<cr>
nnoremap <A-down>   <cmd>wincmd j<cr>
nnoremap <A-up>     <cmd>wincmd k<cr>
nnoremap <A-left>   <cmd>wincmd h<cr>
nnoremap <A-right>  <cmd>wincmd l<cr>
nnoremap <leader>on <cmd>only<cr>
nnoremap <A-d>      <cmd>windo diffthis<cr>
nnoremap <A-s>      <cmd>diffoff!<cr>

