module NLIDatasets

using DataDeps
using HTTP

function getzip(url, file)
    headers = ["User-Agent" => "NLIDatasets.jl",
               "Accept" => "*/*",
               "Accept-Encoding" => "gzip, deflate, br"]
    HTTP.download(url, file, headers)
end

function register_data(name, descr, url, sha; fetch=getzip, postfetch=unpack)
    kw = (fetch_method=fetch, post_fetch_method=postfetch)
    DataDeps.register(DataDep(name, descr, url, sha; kw...))
end

include("snli.jl")
include("multinli.jl")
include("xnli.jl")
include("scitail.jl")
include("hans.jl")
include("breaking_nli.jl")

using .SNLI, .MultiNLI, .XNLI, .SciTail, .HANS, .BreakingNLI

end # module
