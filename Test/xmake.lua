target("Test")
    set_kind("binary")
        
    add_includedirs("../Code/")
    add_deps("GenericTasks")

    add_files("*.cpp")
target_end()