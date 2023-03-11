add_requires("libsdl")

-- Define a build rule for a assets file
rule("assetsfile")
    on_build_file(function (target, sourcefile)
        os.cp(sourcefile, path.join(target:targetdir(), path.filename(sourcefile)))
    end)

target("test-greeting")
    set_kind("binary")
    add_files("test/greeting/*.c") 

target("test-sdl")
    set_kind("binary")
    add_files("test/SDL/*.cpp")
    add_files("test/SDL/assets/*", {rule = "assetsfile"})
    add_packages("libsdl")