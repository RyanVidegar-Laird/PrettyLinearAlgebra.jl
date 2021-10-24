using PrettyLinearAlgebra
using Documenter

DocMeta.setdocmeta!(PrettyLinearAlgebra, :DocTestSetup, :(using PrettyLinearAlgebra); recursive=true)

makedocs(;
    modules=[PrettyLinearAlgebra],
    authors="Ryan Videgar-Laird <Ryan.Videgar-Laird@tuta.io>",
    repo="https://github.com/RyanVidegar-Laird/PrettyLinearAlgebra.jl/blob/{commit}{path}#{line}",
    sitename="PrettyLinearAlgebra.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://RyanVidegar-Laird.github.io/PrettyLinearAlgebra.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/RyanVidegar-Laird/PrettyLinearAlgebra.jl",
    devbranch="main",
)
