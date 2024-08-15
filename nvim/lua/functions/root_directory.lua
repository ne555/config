-- Array of file names indicating root directory. Modify to your liking.
local root_names = { '.git', 'Makefile' }

-- Cache to use for speed up (at cost of possibly outdated results)
local root_cache = {}

local root_directory = function()
    -- Get directory path to start search from
    local path = vim.api.nvim_buf_get_name(0)
    if path == '' then return '' end
    path = vim.fs.dirname(path)

    -- Try cache and resort to searching upward for root directory
    local root = root_cache[path]
    if root == nil then
        local root_file = vim.fs.find(root_names, { path = path, upward = true })[1]
        if root_file == nil then return '' end
        root = vim.fs.dirname(root_file)
        root_cache[path] = root
    end

    return root
end

local set_root = function()
    -- Get directory path to start search from
    local root = root_directory()
    if root ~= '' then
        -- Set current directory
        vim.fn.chdir(root)
    end
end

local root_augroup = vim.api.nvim_create_augroup('autoroot', {})
-- vim.api.nvim_create_autocmd('BufEnter', { group = root_augroup, callback = set_root })

return root_directory
