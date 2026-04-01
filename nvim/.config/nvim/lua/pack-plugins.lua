-- Gather plugin files
local files = {}

local pattern = vim.fn.stdpath 'config' .. '/lua/plugins/*.lua'
for _, path in ipairs(vim.fn.glob(pattern, false, true)) do
  table.insert(files, dofile(path))
end

-- Gather plugins and dependencies
local dependencies = {}
local plugins = {}

for _, file in ipairs(files) do
  table.insert(plugins, file.src)

  if file.dependencies then
    for _, dep in ipairs(file.dependencies) do
      table.insert(dependencies, dep)
    end
  end
end

-- Install dependencies, then plugins
vim.pack.add(dependencies)
vim.pack.add(plugins)

-- Call the config function on every plugin
for _, file in ipairs(files) do
  if file.config then
    file.config()
  end
end
