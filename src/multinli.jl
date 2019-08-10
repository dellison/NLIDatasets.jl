"""
    MultiNLI

A corpus of 433k sentence pairs for NLI.

For details, see the [MultiNLI home page](https://www.nyu.edu/projects/bowman/multinli/)
or read the [2018 paper](https://www.nyu.edu/projects/bowman/multinli/paper.pdf) "A Broad-Coverage Challenge Corpus for Sentence Understanding through Inference" by Adina Williams, NIkita Nangia, and Samuel R. Bowman.
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
                     The Multi-Genre Natural Language Inference (MultiNLI) corpus
                     is a crowd-sourced collection of 433k sentence pairs annotated
                     with textual entailment information.

                     https://www.nyu.edu/projects/bowman/multinli/

                     The dataset is distributed as a 227MB zip file.

                     For license details, see details the data description paper:
                     https://www.nyu.edu/projects/bowman/multinli/paper.pdf
                     """,
                     "https://www.nyu.edu/projects/bowman/multinli/multinli_1.0.zip",
                     "049f507b9e36b1fcb756cfd5aeb3b7a0cfcb84bf023793652987f7e7e0957822",
                     fetch_method = downloadzip,
                     post_fetch_method = unpack))
end
