--- Prints 'structured trace' data to the server `file descriptor 3` channel. This is not generally useful outside of
-- server monitoring utilities.
-- @param jsonString JSON data to submit as `payload` in the `script_structured_trace` event.
function Global.PrintStructuredTrace(jsonString)
	return _in(0x90892ded, _ts(jsonString))
end
