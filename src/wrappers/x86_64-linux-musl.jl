# Autogenerated wrapper script for tree_sitter_java_jll for x86_64-linux-musl
export libtreesitter_java

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libtreesitter_java`
const libtreesitter_java_splitpath = ["lib", "libtreesitter_java.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtreesitter_java_path = ""

# libtreesitter_java-specific global declaration
# This will be filled out by __init__()
libtreesitter_java_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtreesitter_java = "libtreesitter_java.so"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"tree_sitter_java")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libtreesitter_java_path = normpath(joinpath(artifact_dir, libtreesitter_java_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtreesitter_java_handle = dlopen(libtreesitter_java_path)
    push!(LIBPATH_list, dirname(libtreesitter_java_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

