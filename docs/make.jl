using Documenter, UtilityFunctionsLH, FilesLH

makedocs(
    modules = [UtilityFunctionsLH],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    checkdocs = :exports,
    sitename = "UtilityFunctionsLH.jl",
    pages = Any["index.md"]
)

pkgDir = rstrip(normpath(@__DIR__, ".."), '/');
@assert endswith(pkgDir, "UtilityFunctionsLH")
deploy_docs(pkgDir; trialRun = false);

# deploydocs(
#     repo = "github.com/hendri54/UtilityFunctionsLH.jl.git",
# )

# ----------