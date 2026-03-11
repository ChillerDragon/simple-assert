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

return {
	assert_eq = assert_eq
}
