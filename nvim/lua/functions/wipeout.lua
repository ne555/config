-- close inactive buffers

local function print_table(table_)
    for K, x in pairs(table_) do
        print(K, x)
    end
end


vim.api.nvim_create_user_command(
    'Wipeout',
    --'remove buffers not in any tab/window'
    function()
        local buffers = vim.api.nvim_list_bufs()
        local reverse = {}
        for K, x in pairs(buffers) do
            reverse[x] = K
        end

        -- remove active buffers from list
        for _, x in pairs(vim.api.nvim_list_wins()) do
            local b = vim.api.nvim_win_get_buf(x)
            buffers[reverse[b]] = nil
        end

        for _, x in pairs(buffers) do
            vim.api.nvim_buf_delete(x, {})
        end
    end,
    {}
)
