local function assert_eq(expected, actual)
	if expected == actual then
		return
	end

	local msg = string.format([[
❌ Assertion failed
  Expected: '%s'
  Actual:   '%s'
]], tostring(expected), tostring(actual))

	error(msg, 2)
end

local function assert_ne(not_expected, actual)
	if not_expected ~= actual then
		return
	end

	local msg = string.format([[
❌ Assertion failed
  Expected: '%s' != '%s'
  Actual:   '%s' == '%s'
]], tostring(not_expected), tostring(actual), tostring(not_expected), tostring(actual))

	error(msg, 2)
end

return {
	assert_eq = assert_eq,
	assert_ne = assert_ne,
}
