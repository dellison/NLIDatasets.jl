"""
"""
struct MultiNLI <: NLIDataset end

multinlifile(filename) = joinpath(datadep"MultiNLI", "multinli_1.0", filename)

train_tsv(::MultiNLI)            = multinlifile("multinli_1.0_train.txt")
train_jsonl(::MultiNLI)          = multinlifile("multinli_1.0_train.jsonl")
dev_matched_tsv(::MultiNLI)      = multinlifile("multinli_1.0_dev_matched.txt")
dev_matched_jsonl(::MultiNLI)    = multinlifile("multinli_1.0_dev_matched.jsonl")
dev_mismatched_tsv(::MultiNLI)   = multinlifile("multinli_1.0_dev_mismatched.txt")
dev_mismatched_jsonl(::MultiNLI) = multinlifile("multinli_1.0_dev_mismatched.jsonl")

function register_MultiNLI()
    register(DataDep("MultiNLI",
                     """
                     """,
                     "https://www.nyu.edu/projects/bowman/multinli/multinli_1.0.zip",
                     "",
                     fetch_method = downloadzip,
                     post_fetch_method = unpack))
end
