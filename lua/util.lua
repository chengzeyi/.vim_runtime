M = {}

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

return M
