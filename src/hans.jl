"""
    HANS

HANS (Heauristic Analysis for NLI Systems) is a dataset for NLI.

For details, see the [paper](https://www.aclweb.org/anthology/P19-1334) "Right for the Wrong Reasons: Diagnosing Syntactic Heuristics in Natural Language Inference"
by by R. Tom McCoy, Ellie Pavlick, and Tal Linzen.

Consists of a set of examples for evaluation, provided with `test_tsv`.
"""
struct HANS <: NLIDataset end

hansfile(filename) = joinpath(datadep"HANS", "hans-0e52769572ab97da1b919baf222f355bdf481d88", filename)

test_tsv(::HANS) = hansfile("heuristics_evaluation_set.txt")
                              
function register_HANS()
    register(DataDep("HANS",
                     """
                     HANS (Heauristic Analysis for NLI Systems) is a dataset for natural language inference.
                     It contains the set of examples used in the 2019 paper "Right for the Wrong Reasons: Diagnosing Syntactic Heuristics in Natural Language Inference" by R. Tom McCoy, Ellie Pavlick, and Tal Linzen.
                     """,
                     "https://github.com/tommccoy1/hans/archive/0e52769572ab97da1b919baf222f355bdf481d88.zip",
                     "24316fa3d7298dfd5198059ed1c4eab0b84876cfbc8851df48e96abaa36ead8c",
                     post_fetch_method = unpack))
end



