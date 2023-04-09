--- Sets the entity lockdown mode for a specific routing bucket.
-- Lockdown modes are:
-- | Mode       | Meaning                                                    |
-- | ---------- | ---------------------------------------------------------- |
-- | `strict`   | No entities can be created by clients at all.              |
-- | `relaxed`  | Only script-owned entities created by clients are blocked. |
-- | `inactive` | Clients can create any entity they want.                   |
-- @param bucketId The routing bucket ID to adjust.
-- @param mode One of aforementioned modes.
function Global.SetRoutingBucketEntityLockdownMode(bucketId, mode)
	return _in(0xa0f2201f, bucketId, _ts(mode))
end
