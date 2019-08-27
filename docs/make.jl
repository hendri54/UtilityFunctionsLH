using Documenter, UtilityFunctionsLH

makedocs(
    modules = [UtilityFunctionsLH],
    format = :html,
    checkdocs = :exports,
    sitename = "UtilityFunctionsLH.jl",
    pages = Any["index.md"]
)

deploydocs(
    repo = "github.com/hendri54/UtilityFunctionsLH.jl.git",
)
