using Documenter, UtilityFunctionsLH

makedocs(
    modules = [UtilityFunctionsLH],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    checkdocs = :exports,
    sitename = "UtilityFunctionsLH.jl",
    pages = Any["index.md"]
)

# deploydocs(
#     repo = "github.com/hendri54/UtilityFunctionsLH.jl.git",
# )

# ----------