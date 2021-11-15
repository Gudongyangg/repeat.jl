using repeat
using Documenter

DocMeta.setdocmeta!(repeat, :DocTestSetup, :(using repeat); recursive=true)

makedocs(;
    modules=[repeat],
    authors="Gudongyangg",
    repo="https://github.com/Gudongyangg/repeat.jl/blob/{commit}{path}#{line}",
    sitename="repeat.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Gudongyangg.github.io/repeat.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Gudongyangg/repeat.jl",
    devbranch="master",
)
