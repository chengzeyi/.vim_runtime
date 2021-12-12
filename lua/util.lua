M = {}

if pcall(require, 'nvim-treesitter') then
    -- local transform_fn = function(line)
    --     return line:gsub('%s*[%[%(%{]*[^%[%(%{]*$', '')
    -- end

    function M.treesitter_statusline()
        return require'nvim-treesitter'.statusline {
            -- transform_fn = transform_fn,
            separator = ' ❱ ',
        }
    end
end

function M.foldexpr()
    local lnum = vim.v.lnum
    local curr_line = vim.fn.getline(lnum)
    if curr_line == '' then
        return '='
    end
    local non_blank_c = curr_line:match('%S')
    if non_blank_c == nil then
        return '='
    end
    local curr_ind = vim.fn.indent(lnum)
    local fdi = vim.wo.fdi
    if fdi ~= '' and fdi:find(non_blank_c) then
        return '='
    end
    local sw = vim.fn.shiftwidth()
    local sw_1 = sw - 1
    local ind = math.floor((curr_ind + sw_1) / sw)
    local next_ind = math.floor((vim.fn.indent(lnum + 1) + sw_1) / sw)
    return ind < next_ind and '>' .. next_ind or ind
end

function M.blame_virt_text()
    local ft = vim.fn.expand('%:h:t') -- get the current file extension
    if ft == '' then -- if we are in a scratch buffer or unknown filetype
        return
    end
    if ft == 'bin' then -- if we are in nvim's terminal window
        return
    end
    vim.api.nvim_buf_clear_namespace(0, 2, 0, -1) -- clear out virtual text from namespace 2 (the namespace we will set later)
    local curr_file = vim.fn.expand('%')
    if curr_file == '' then
        return
    end
    local line = vim.api.nvim_win_get_cursor(0)
    local blame = vim.fn.system(string.format('git blame -c -L %d,%d %s', line[1], line[1], curr_file))
    local hash = vim.split(blame, '%s')[1]
    local cmd = string.format('git show %s ', hash).."--format='%an | %ar | %s'"
    if hash == '00000000' then
        text = 'Not Committed Yet'
    else
        text = vim.fn.systemlist(cmd)[1]
        if text:find('fatal') then -- if the call to git show fails
            text = 'Not Committed Yet'
        end
    end
    vim.api.nvim_buf_set_virtual_text(0, 2, line[1] - 1, {{ text, 'Comment' }}, {}) -- set virtual text for namespace 2 with the content from git and assign it to the higlight group 'GitLens'
end

function M.clear_blame_virt_text() -- important for clearing out the text when our cursor moves
    vim.api.nvim_buf_clear_namespace(0, 2, 0, -1)
end

return M
