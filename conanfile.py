from conan import ConanFile

class TPCPPRecipe(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    generators = "PremakeDeps"

    def requirements(self):
        # General
        self.requires("spdlog/1.17.0")
        self.requires("fmt/12.1.0")
        self.requires("boost/1.91.0")
        self.requires("nlohmann_json/3.12.0")

        # WebServer
        # self.requires("openssl/3.6.3")
        self.requires("cpp-httplib/0.47.0")
        self.requires("inja/3.5.0")

        # Machine Interface
        self.requires("libmodbus/3.1.12")

        # TEST
        self.requires("gtest/1.18.0")

    def configure(self):
        self.options["cpp-httplib"].with_openssl = True
        self.options["boost"].without_fiber = False
        self.options["boost"].without_cobalt = True
