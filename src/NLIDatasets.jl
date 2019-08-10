module NLIDatasets

export SNLI, MultiNLI, XNLI

export train_tsv, train_jsonl, dev_tsv, dev_jsonl, test_tsv, test_jsonl,
    dev_matched_tsv, dev_matched_jsonl, dev_mismatched_tsv, dev_mismatched_jsonl

using DataDeps
using DataDeps: @datadep_str
using HTTP

"""
"""
abstract type NLIDataset end

for f in [:train_tsv, :train_jsonl, :dev_tsv, :dev_jsonl,
          :dev_matched_tsv, :dev_matched_jsonl, :dev_mismatched_tsv, :dev_mismatched_jsonl,
          :test_tsv, :test_jsonl]
    @eval $f(t::Type{<:NLIDataset}) = $f(t())
end

include("snli.jl")
include("multinli.jl")
include("xnli.jl")

include("util.jl")

function __init__()
    register_SNLI()
    register_MultiNLI()
    register_XNLI()
end



end # module
