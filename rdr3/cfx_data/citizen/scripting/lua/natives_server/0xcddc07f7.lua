--- Sets whether or not the specified routing bucket has automatically-created population enabled.
-- @param bucketId The routing bucket ID to adjust.
-- @param mode `true` to enable population, `false` to disable population.
function Global.SetRoutingBucketPopulationEnabled(bucketId, mode)
	return _in(0xce51ac2c, bucketId, mode)
end
