--
-- Example: Echo
--
-- Build and run with:
--   premake5 glc-build
--   premake5 glc-run -- hello world
--
-- Requires GLC_HOME to point at a Glasslight installation, or adjust the
-- path below to wherever glasslight.lua lives.
--

local glc_home = os.getenv("GLC_HOME")
if not glc_home then
	error("Set GLC_HOME to your Glasslight installation (contains bin/glc and System/)")
end

package.path = glc_home .. "/premake/?.lua;" .. package.path
local glasslight = require("glasslight")

glasslight.program {
	name   = "echo",
	source = "echo.glc",
}
