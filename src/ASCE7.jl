module ASCE7


export v2016
include("v2016.jl")
using .v2016

export v2022
include("v2022.jl")
using .v2022

end # module ASCE7
