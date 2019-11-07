"""
    ANLI

For details, see the [GitHub page](https://github.com/facebookresearch/anli) or read the [2019 paper](https://arxiv.org/pdf/1910.14599.pdf).

Available data:
```julia
ANLI.R1_train_jsonl()
ANLI.R1_dev_jsonl()
ANLI.R1_test_jsonl()
ANLI.R2_train_jsonl()
ANLI.R2_dev_jsonl()
ANLI.R2_test_jsonl()
ANLI.R3_train_jsonl()
ANLI.R3_dev_jsonl()
ANLI.R3_test_jsonl()
```
"""
module ANLI

import ...register_data
using DataDeps: @datadep_str, unpack

anli_file(file, files...) = joinpath(datadep"ANLI", "anli_v0.1", file, files...)

R1_train_jsonl() = anli_file("R1", "train.jsonl")
R1_dev_jsonl()   = anli_file("R1", "dev.jsonl")
R1_test_jsonl()  = anli_file("R1", "test.jsonl")
R2_train_jsonl() = anli_file("R2", "train.jsonl")
R2_dev_jsonl()   = anli_file("R2", "dev.jsonl")
R2_test_jsonl()  = anli_file("R2", "test.jsonl")
R3_train_jsonl() = anli_file("R3", "train.jsonl")
R3_dev_jsonl()   = anli_file("R3", "dev.jsonl")
R3_test_jsonl()  = anli_file("R3", "test.jsonl")

function __init__()
    register_data(
        "ANLI",
        """
        ANLI is the Adversarial Natural Language Inference Benchmark.

        ANLI is licensed under Creative Commons-Non Commercial 4.0.
        """,
        "https://dl.fbaipublicfiles.com/anli/anli_v0.1.zip",
        "16ac929a7e90ecf9093deaec89cc81fe86a379265a5320a150028efe50c5cde8",
        postfetch=unpack
    )
end

end # module
