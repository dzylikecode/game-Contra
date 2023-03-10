add_requires("libsdl")

target("test-greeting")
    set_kind("binary")
    add_files("test/greeting/*.c") 

target("test-sdl")
    set_kind("binary")
    add_files("test/SDL/*.cpp")
    add_packages("libsdl")