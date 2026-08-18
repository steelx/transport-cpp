-- Core lib with all the code

-- Arguments
-- 1) Name of the project used in the visual studio solution
-- 2) OPTIONAL: Output name of the project (name of the exe / lib)
mox_project("LibTransportCPP", "lib_tp_cpp")

-- This line selects the programming language
-- Options
-- A) mox_c()
-- B) mox_cpp()
-- C) mox_cs(dotnet)
--    notnet: .NET Framework version (optional, default to 4.6)
mox_cpp()

-- This line select the type of output
-- Options
-- A) mox_console()
--    Default console application
-- B) mox_windowed()
--    Windowd application without console (Windows only)
-- C) mox_sharedlib()
--    Shared library (.dll / .so)
-- D) mox_staticlib()
--    Static library
-- E) mox_utility()
--    Utility, used for custom build actions without code (will build but no code)
-- F) mox_none()
--    None, used for header only projects (skipped during build)
mox_staticlib()

-- Make sure to give each project a unique GUID
-- The UUID is important for VisualStudio projects
-- You can generate a UUID by running `mox generate_uuid` or `./mox.sh generate_uuid` respective.
uuid("90e40544-e89a-48d2-bad1-1ae58916771b")
mox_test_requirement()

-- Further setup:
-- Now you can all the premake5 setting you like
-- https://premake.github.io/docs

-- Use the following to add linking to other projects
-- links {
--     "ProjectName",
--     "ProjectName2",
-- }

-- Use the following to build after other projects
-- dependson {
--     "ProjectName",
--     "ProjectName2",
-- }
