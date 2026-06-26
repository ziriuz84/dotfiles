local M = {}

M.no_format_patterns = {
  'agim%-project/agim',
  'agim%-project/devilbox/data/www/agim3',
  'agim%-project/ssdgest',
}

M.no_lint_php_patterns = {
  'agim%-project/agim3%.ssd/agim',
}

function M.matches_any(file_path, patterns)
  for _, pattern in ipairs(patterns) do
    if file_path:find(pattern) then
      return true
    end
  end
  return false
end

return M
