"""
    XNLI

A collection of 5,000 test and 2,500 dev pairs for the `MultiNLI` corpus.

For details, see the [2018 paper](https://www.aclweb.org/anthology/papers/D/D18/D18-1269/) "XNLI: Evaluating Cross-lingual Sentence Representations."
"""
struct XNLI <: NLIDataset end

xnlifile(filename) = joinpath(datadep"XNLI", "XNLI-1.0", filename)

dev_tsv(::XNLI)    = xnlifile("xnli.dev.tsv")
dev_jsonl(::XNLI)  = xnlifile("xnli.dev.jsonl")
test_tsv(::XNLI)   = xnlifile("xnli.test.tsv")
test_jsonl(::XNLI) = xnlifile("xnli.test.jsonl")

function register_XNLI()
    register(DataDep("XNLI",
                     """
                     The Cross-lingual Natural Language Inference (XNLI) corpus is a crowd-sourced collection of 5,000 test and 2,500 dev pairs for the `MultiNLI` corpus.
                     """,
                     "http://www.nyu.edu/projects/bowman/xnli/XNLI-1.0.zip",
                     "4ba1d5e1afdb7161f0f23c66dc787802ccfa8a25a3ddd3b165a35e50df346ab1",
                     fetch_method = downloadzip,
                     post_fetch_method = unpack))
end
