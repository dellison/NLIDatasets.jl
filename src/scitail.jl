"""
"""
struct SciTail <: NLIDataset end

scitail_base() = joinpath(datadep"SciTailV1.1", "SciTailV1.1")
scitail_jsonl(filename) = joinpath(scitail_base(), "snli_format", filename)
scitail_tsv(filename)   = joinpath(scitail_base(), "tsv_format", filename)

train_tsv(::SciTail)   = scitail_tsv("scitail_1.0_train.tsv")
train_jsonl(::SciTail) = scitail_jsonl("scitail_1.0_train.txt")
dev_tsv(::SciTail)     = scitail_tsv("scitail_1.0_dev.tsv")
dev_jsonl(::SciTail)   = scitail_jsonl("scitail_1.0_dev.txt")
test_tsv(::SciTail)    = scitail_tsv("scitail_1.0_test.tsv")
test_jsonl(::SciTail)  = scitail_jsonl("scitail_1.0_test.txt")

function register_SciTail()
    register(DataDep("SciTailV1.1",
                     """
                     """,
                     "http://data.allenai.org.s3.amazonaws.com/downloads/SciTailV1.1.zip",
                     "3fccd37350a94ca280b75998568df85fc2fc62843a3198d644fcbf858e6943d5",
                     fetch_method = downloadzip,
                     post_fetch_method = unpack))
end
