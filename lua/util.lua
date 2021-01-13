M = {}

function M.foldexpr()
  local lnum = vim.v.lnum
  local curr_line = vim.fn.getline(lnum)
  if curr_line == '' then
    return -1
  end
  local non_blank_c = curr_line:match('%S')
  if non_blank_c == nil then
    return -1
  end
  local curr_ind = vim.fn.indent(lnum)
  local curr_ind_1 = curr_ind + 1
  local fdi = vim.wo.fdi
  if fdi ~= '' then
    if fdi:find(non_blank_c) then
      return '='
    end
  end
  local sw = vim.fn.shiftwidth()
  local sw_1 = sw - 1
  local ind = math.floor((curr_ind + sw_1) / sw)
  local next_ind = math.floor((vim.fn.indent(lnum + 1) + sw_1) / sw)
  return math.max(ind, next_ind)
end

return M
