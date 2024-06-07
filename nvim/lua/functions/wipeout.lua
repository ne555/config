-- close inactive buffers

function wipeout()
    local buffers = vim.api.nvim_list_bufs()
    -- remove active buffers from list
    for K, x in pairs(vim.api.nvim_list_wins()) do
        local b = vim.api.nvim_win_get_buf(x)
        buffers[b] = nil
    end

    for K, x in pairs(buffers) do
        vim.api.nvim_buf_delete(x, {})
    end
end
