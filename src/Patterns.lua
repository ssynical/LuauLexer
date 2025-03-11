-- Lexer.lua/Patterns.lua
-- String patterns the lexer uses to search and identify types
-- Always start patterns with ^ to indicate the beginning, and never use $ at end

local patterns = {
	{
		-- multiline string patterns
		pattern = "^%[%[.-%]%]",
		name = "string"
	},
	{
		-- Line comments
		pattern = "^%-%-[^\n]*",
		name = "comment"
	},
	{
		-- Block comments
		pattern = "^%-%-%[%[.-%]%]",
		name = "comment"
	},
	{
		-- Improved string pattern to better handle escaped quotes
		pattern = "^([\"']).-[^\\]%1",
		name = "string"
	},
	{
		-- Empty strings
		pattern = "^([\"'])%1",
		name = "string"
	},
	{
		pattern = "^0x%w+",
		name = "hexadecimal"
	},
	{
		pattern = "^%d+%.%d+",
		name = "float"
	},
	{
		pattern = "^%d+",
		name = "int"
	},
	{
		-- mutli-char operators
		pattern = "^(==|~=|<=|>=|%.%.%.?|[%-%+/%*=<>])",
		name = "operator"
	},
	{
		-- tables, parentheses, etc
		pattern = "^([{}%(%)%[%]%;%,:%.])",
		name = "punctuation"
	},
	{
		pattern = "^%w+",
		name = "word"
	},
	{
		pattern = "^%s+",
		name = "whitespace"
	},
	{
		pattern = "^.",
		name = "unknown"
	}
}

return patterns
