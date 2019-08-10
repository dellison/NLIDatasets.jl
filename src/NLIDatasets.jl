module NLIDatasets

export SNLI, MultiNLI, XNLI, SciTail, HANS, BreakingNLI

export train_tsv, train_jsonl, dev_tsv, dev_jsonl, test_tsv, test_jsonl,
    dev_matched_tsv, dev_matched_jsonl, dev_mismatched_tsv, dev_mismatched_jsonl

using DataDeps
using DataDeps: @datadep_str
using HTTP

abstract type NLIDataset end

include("snli.jl")
include("multinli.jl")
include("xnli.jl")
include("scitail.jl")
include("hans.jl")
include("breaking_nli.jl")

include("util.jl")

function __init__()
    register_SNLI()
    register_MultiNLI()
    register_XNLI()
    register_SciTail()
    register_HANS()
    register_BreakingNLI()
end

end # module
