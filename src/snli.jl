"""
"""
struct SNLI <: NLIDataset end

"""
"""
struct SNLIExample
    gold_label
    sentence1_binary_parse
    sentence2_binary_parse
    sentence1_parse
    sentence2_parse
    sentence1
    sentence2
    captionID
    pairID
    label1
    label2
    label3
    label4
    label5
end
SNLIExample(str::String) = SNLIExample(String.(split(line, "\t"))...)

snlifile(filename) = joinpath(datadep"SNLI", "snli_1.0", filename)

train_tsv(::SNLI)   = snlifile("snli_1.0_train.txt")
train_jsonl(::SNLI) = snlifile("snli_1.0_train.jsonl")
dev_tsv(::SNLI)     = snlifile("snli_1.0_dev.txt")
dev_jsonl(::SNLI)   = snlifile("snli_1.0_dev.jsonl")
test_tsv(::SNLI)    = snlifile("snli_1.0_test.txt")
test_jsonl(::SNLI)  = snlifile("snli_1.0_test.jsonl")

function register_SNLI()
    register(DataDep("SNLI",
                     """
                     """,
                     "https://nlp.stanford.edu/projects/snli/snli_1.0.zip",
                     "afb3d70a5af5d8de0d9d81e2637e0fb8c22d1235c2749d83125ca43dab0dbd3e",
                     post_fetch_method = unpack))
end
