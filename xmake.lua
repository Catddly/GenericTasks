includes("Test/xmake.lua")

set_version("0.0.1")

add_rules("plugin.vsxmake.autoupdate")
add_rules("mode.debug", "mode.release")

set_objectdir("$(projectdir)/Intermediates")
set_targetdir("$(projectdir)/Target")

set_languages("c++20")

-- Debug
if is_mode("debug") then
    set_symbols("debug")
    set_optimize("none")
end

-- Release
if is_mode("release") then
    set_symbols("hidden")
    set_strip("all")
    set_optimize("fastest")
end

-- Warning As Erros
add_cxxflags("/WX")

target("GenericTasks")
    set_kind("static")

    add_headerfiles("Code/LockFree/*.h")
    add_files("Code/LockFree/*.cpp")
target_end()
