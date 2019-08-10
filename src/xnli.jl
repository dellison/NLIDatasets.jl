"""
"""
struct XNLI <: NLIDataset end

xnlifile(filename) = joinpath(datadep"XNLI", "XNLI-1.0", filename)

dev_tsv(::XNLI)   = xnlifile("xnli.dev.tsv")
dev_json(::XNLI)  = xnlifile("xnli.dev.jsonl")
test_tsv(::XNLI)  = xnlifile("xnli.test.tsv")
test_json(::XNLI) = xnlifile("xnli.test.jsonl")

function register_XNLI()
    register(DataDep("XNLI",
                     """
                     """,
                     "http://www.nyu.edu/projects/bowman/xnli/XNLI-1.0.zip",
                     "4ba1d5e1afdb7161f0f23c66dc787802ccfa8a25a3ddd3b165a35e50df346ab1",
                     fetch_method = downloadzip,
                     post_fetch_method = unpack))
end
