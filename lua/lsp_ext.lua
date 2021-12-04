local validate = vim.validate
local util = require 'vim.lsp.util'

M = {}

function M.request(method, params, handler)
    validate {
        method = {method, 's'};
        handler = {handler, 'f', true};
    }
    return vim.lsp.buf_request(0, method, params, handler)
end

function M.on_complete_done()
    local completed_item = vim.api.nvim_get_vvar('completed_item')
    if not completed_item or not completed_item.user_data or not completed_item.user_data.nvim or not completed_item.user_data.nvim.lsp then
        return
    end
    local item = completed_item.user_data.nvim.lsp.completion_item
    if item.additionalTextEdits then
        local lnum, col = unpack(vim.api.nvim_win_get_cursor(0))
        local bufnr = vim.api.nvim_get_current_buf()
        -- Text edit in the same line would mess with the cursor position
        local edits = vim.tbl_filter(function(x) return x.range.start.line ~= (lnum - 1) end, item.additionalTextEdits)
        vim.api.nvim_set_option('ul', vim.api.nvim_get_option('ul'))
        vim.lsp.util.apply_text_edits(edits, bufnr)
    end
end

function M.signature_help()
    local clients = vim.lsp.buf_get_clients(0)
    if clients == nil then
        return
    end
    local pos = nil
    local line
    local line_to_cursor
    for _, client in pairs(clients) do
        if client.resolved_capabilities.signature_help == false or
            client.server_capabilities.signatureHelpProvider == nil then
            -- do nothing
        else
            if pos == nil then
                pos = vim.api.nvim_win_get_cursor(0)
                line = vim.api.nvim_get_current_line()
                line_to_cursor = vim.trim(line:sub(1, pos[2]))
            end
            if M.check_trigger_character(line_to_cursor, client.server_capabilities.signatureHelpProvider.triggerCharacters) then
                local params = vim.lsp.util.make_position_params()
                -- M.request('textDocument/signatureHelp', params)
                M.request('textDocument/signatureHelp', params, M.signature_help_callback)
                return
            end
        end
    end
end

function M.check_trigger_character(line_to_cursor, trigger_character)
    if trigger_character == nil then return end
    for _, ch in ipairs(trigger_character) do
        local current_char = string.sub(line_to_cursor, #line_to_cursor-#ch+1, #line_to_cursor)
        if current_char == ch then
            return true
        end
    end
    return false
end

function M.signature_help_callback(_, result, ctx, config)
    -- When use `autocmd CompleteDone <silent><buffer> lua vim.lsp.buf.signature_help()` to call signatureHelp handler
    -- If the completion item doesn't have signatures It will make noise. Change to use `print` that can use `<silent>` to ignore
    if not (result and result.signatures and result.signatures[1]) then
        -- print('No signature help available')
        return
    end
    local lines = util.convert_signature_help_to_markdown_lines(result)
    lines = util.trim_empty_lines(lines)
    if vim.tbl_isempty(lines) then
        -- print('No signature help available')
        return
    end
    util.open_floating_preview(lines, util.try_trim_markdown_code_blocks(lines), {
        -- pad_left = 1; pad_right = 1;
        max_height = math.max(12, math.floor(vim.o.lines / 4));
    })

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

function M.preview_location_callback(_, result, ctx, _)
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

function M.lsp_progress()
    local messages = vim.lsp.util.get_progress_messages()
    if #messages == 0 then
        return ''
    end
    local status = {}
    for _, msg in pairs(messages) do
        table.insert(status, (msg.percentage or 0) .. '%% ' .. (msg.title or ''))
    end
    local spinners = {
        '⠋',
        '⠙',
        '⠹',
        '⠸',
        '⠼',
        '⠴',
        '⠦',
        '⠧',
        '⠇',
        '⠏',
    }
    local ms = vim.loop.hrtime() / 1000000
    local frame = math.floor(ms / 120) % #spinners
    return table.concat(status, ' | ') .. ' ' .. spinners[frame + 1]
end

return M
