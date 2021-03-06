include("helper.jl")

path_to_this_file = Base.source_path()
testdir = join(split(path_to_this_file, "/")[1:end-1], "/")
srcdir = join([testdir, "../src"], "/")

AutoTest.start_autotesting(srcdir, testdir)
sleep(60*60*24*365) # A year should be plenty enough... :)
#AutoTest.set_verbosity!(100) # Print everything
#AutoTest.run_all_tests_in_dir(testdir, r"^test.*\.jl")