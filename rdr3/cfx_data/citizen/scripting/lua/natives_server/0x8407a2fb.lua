--- Returns true if the profiler is active.
-- @return True or false.
function Global.ProfilerIsRecording()
	return _in(0xf8b7d7bb, _r)
end
