package = "kong-plugin-nordheader"
version = "0.1.0-1"
local pluginName = package:match("^kong%-plugin%-(.+)$")

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/nsahai/kong-header-route.git",
  tag = "kongdevelopment"
}


dependencies = {
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugin."..pluginName..".handler"] = "kong/plugin/"..pluginName.."/handler.lua",
    ["kong.plugin."..pluginName..".schema"] = "kong/plugin/"..pluginName.."/schema.lua",
  }
}
