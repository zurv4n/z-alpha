--- Nonsynchronous operations will not wait for a disk/filesystem flush before returning from a write or delete call. They will be much faster than their synchronous counterparts (e.g., bulk operations), however, a system crash may lose the data to some recent operations.
-- This native ensures all `_NO_SYNC` operations are synchronized with the disk/filesystem.
function Global.FlushResourceKvp()
	return _in(0xe27c97a0)
end
