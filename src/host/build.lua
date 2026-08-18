-- Host application for running the code
mox_project("TransportCPPHost", "tp_cpp_host")
mox_cpp()
mox_console()
uuid("f48942d0-66b0-4966-ad08-f7a6f0aa3969")
-- Further setup:
-- Now you can all the premake5 setting you like
-- https://premake.github.io/docs

-- Use the following to add linking to other projects
links {
    "LibTransportCPP",
}

-- Use the following to build after other projects
dependson {
    "LibTransportCPP"
}
