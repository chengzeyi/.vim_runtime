local util = require 'vim.lsp.util'

M = {}

function M.signature_help(_, method, result)
    -- When use `autocmd CompleteDone <silent><buffer> lua vim.lsp.buf.signature_help()` to call signatureHelp handler
    -- If the completion item doesn't have signatures It will make noise. Change to use `print` that can use `<silent>` to ignore
    if not (result and result.signatures and result.signatures[1]) then
        print('No signature help available')
        return
    end
    local lines = util.convert_signature_help_to_markdown_lines(result)
    lines = util.trim_empty_lines(lines)
    if vim.tbl_isempty(lines) then
        print('No signature help available')
        return
    end
    util.open_floating_preview(lines, util.try_trim_markdown_code_blocks(lines))

    -- util.focusable_float(method, function()
    --     local bufnr, winnr = util.fancy_floating_markdown(lines, {
    --         -- pad_left = 1; pad_right = 1;
    --         max_height = math.max(12, math.floor(vim.o.lines / 4));
    --     })
    --     util.close_preview_autocmd({'CursorMoved', 'CursorMovedI', 'BufHidden', 'InsertCharPre'}, winnr)
    --     return bufnr, winnr
    --     -- return util.open_floating_preview(lines, '')
    -- end)

    -- util.focusable_preview(method, function()
    --     return lines, util.try_trim_markdown_code_blocks(lines)
    -- end)
end

function M.preview_location(location, context, before_context)
    -- location may be LocationLink or Location (more useful for the former)
    context = context or 15
    before_context = before_context or 0
    local uri = location.targetUri or location.uri
    if uri == nil then
        return
    end
    local bufnr = vim.uri_to_bufnr(uri)
    if not vim.api.nvim_buf_is_loaded(bufnr) then
        vim.fn.bufload(bufnr)
    end
    local range = location.targetRange or location.range
    local contents =
    vim.api.nvim_buf_get_lines(bufnr, range.start.line - before_context, range['end'].line + 1 + context, false)
    local filetype = vim.api.nvim_buf_get_option(bufnr, 'filetype')
    return vim.lsp.util.open_floating_preview(contents, filetype)
end

function M.switch_header_source()
    vim.lsp.buf_request(
    0,
    'textDocument/switchSourceHeader',
    vim.lsp.util.make_text_document_params(),
    function(err, _, result, _, _)
        if err then
            print(err)
        else
            vim.cmd('e ' .. vim.uri_to_fname(result))
        end
    end
    )
end

function M.preview_location_callback(_, method, result)
    local context = 15
    if result == nil or vim.tbl_isempty(result) then
        vim.lsp.log.info(method, 'No location found')
        return nil
    end
    if vim.tbl_islist(result) then
        M.preview_location(result[1], context)
    else
        M.preview_location(result, context)
    end
end

function M.peek_declaration()
    local params = vim.lsp.util.make_position_params()
    return vim.lsp.buf_request(0, 'textDocument/declaration', params, M.preview_location_callback)
end

function M.peek_definition()
    local params = vim.lsp.util.make_position_params()
    return vim.lsp.buf_request(0, 'textDocument/definition', params, M.preview_location_callback)
end

function M.peek_type_definition()
    local params = vim.lsp.util.make_position_params()
    return vim.lsp.buf_request(0, 'textDocument/typeDefinition', params, M.preview_location_callback)
end

function M.peek_implementation()
    local params = vim.lsp.util.make_position_params()
    return vim.lsp.buf_request(0, 'textDocument/implementation', params, M.preview_location_callback)
end

return M
