var documenterSearchIndex = {"docs":
[{"location":"#NLIDatasets.jl-1","page":"Home","title":"NLIDatasets.jl","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"NLIDatasets.jl is a Julia package for working with datasets for the Natural Language Inference task (also called Relational Text Entailment, or RTE).","category":"page"},{"location":"#","page":"Home","title":"Home","text":"Provides an interface to the following datasets:","category":"page"},{"location":"#","page":"Home","title":"Home","text":"SNLI\nMultiNLI\nXNLI\nHANS\nBreakingNLI\nSciTail\nANLI","category":"page"},{"location":"#SNLI-1","page":"Home","title":"SNLI","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"NLIDatasets.SNLI","category":"page"},{"location":"#NLIDatasets.SNLI","page":"Home","title":"NLIDatasets.SNLI","text":"SNLI\n\nA corpus of 570k human-written English sentence pairs for NLI.\n\nSNLI sentence pairs are manually labeled with labels entailment, contradiction, and neutral.\n\nFor details, see the SNLI home page or read the 2015 paper \"A large annotated corpus for learning natural language inference\" by Samuel R. Bowman, Gabor Angeli, Christopher Potts, and Christopher Manning.\n\nIncluded data:\n\nSNLI.train_tsv()\nSNLI.train_jsonl()\nSNLI.dev_tsv()\nSNLI.dev_jsonl()\nSNLI.test_tsv()\nSNLI.test_jsonl()\n\n\n\n\n\n","category":"module"},{"location":"#MultiNLI-1","page":"Home","title":"MultiNLI","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"NLIDatasets.MultiNLI","category":"page"},{"location":"#NLIDatasets.MultiNLI","page":"Home","title":"NLIDatasets.MultiNLI","text":"MultiNLI\n\nA corpus of 433k sentence pairs for NLI.\n\nFor details, see the MultiNLI home page or read the 2018 paper \"A Broad-Coverage Challenge Corpus for Sentence Understanding through Inference\" by Adina Williams, NIkita Nangia, and Samuel R. Bowman.\n\nIncluded data:\n\nMultiNLI.train_tsv()\nMultiNLI.train_jsonl()\nMultiNLI.dev_matched_tsv()\nMultiNLI.dev_matched_jsonl()\nMultiNLI.dev_mismatched_tsv()\nMultiNLI.dev_mismatched_jsonl()\n\n\n\n\n\n","category":"module"},{"location":"#XNLI-1","page":"Home","title":"XNLI","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"NLIDatasets.XNLI","category":"page"},{"location":"#NLIDatasets.XNLI","page":"Home","title":"NLIDatasets.XNLI","text":"XNLI\n\nA collection of 5,000 test and 2,500 dev pairs for the MultiNLI corpus.\n\nFor details, see the 2018 paper \"XNLI: Evaluating Cross-lingual Sentence Representations.\"\n\nXNLI.dev_tsv()\nXNLI.dev_jsonl()\nXNLI.test_tsv()\nXNLI.test_jsonl()\n\n\n\n\n\n","category":"module"},{"location":"#HANS-1","page":"Home","title":"HANS","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"NLIDatasets.HANS","category":"page"},{"location":"#NLIDatasets.HANS","page":"Home","title":"NLIDatasets.HANS","text":"HANS\n\nHANS (Heauristic Analysis for NLI Systems) is a dataset for NLI.\n\nIt contains the set of examples used in the 2019 paper \"Right for the Wrong Reasons: Diagnosing Syntactic Heuristics in Natural Language Inference\" by R. Tom McCoy, Ellie Pavlick, and Tal Linzen.\n\nFor details, see the 2019 paper \"Right for the Wrong Reasons: Diagnosing Syntactic Heuristics in Natural Language Inference\" by by R. Tom McCoy, Ellie Pavlick, and Tal Linzen.\n\nConsists of a set of examples for evaluation, provided with test_tsv.\n\nHANS.test_tsv()\n\n\n\n\n\n","category":"module"},{"location":"#BreakingNLI-1","page":"Home","title":"BreakingNLI","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"NLIDatasets.BreakingNLI","category":"page"},{"location":"#NLIDatasets.BreakingNLI","page":"Home","title":"NLIDatasets.BreakingNLI","text":"BreakingNLI\n\nA dataset of 8193 premise-hypothesis sentence-pairs for NLI.\n\nEach example is annotated to entailment, contradiction, and neutral. The premise and the hypothesis are identical except for one word/phrase that was replaced. This dataset is meant for testing methods trained to solve the natural language inference task, and it requires some lexical and world knowledge to achieve reasonable performance on it.\n\nFor details, see the GitHub page or read the 2018 paper.\n\nAvailable data:\n\nBreakingNLI.test_jsonl()\n\n\n\n\n\n","category":"module"},{"location":"#SciTail-1","page":"Home","title":"SciTail","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"NLIDatasets.SciTail","category":"page"},{"location":"#NLIDatasets.SciTail","page":"Home","title":"NLIDatasets.SciTail","text":"SciTail\n\nSciTail is a NLI dataset created from multiple-choice science exams and web sentences.\n\nFor details, see the 2018 paper \"SciTail: A Textual Entailment Dataset from Science Question Answering\" by Tushar Khot, Asish Sabharwal, and Peter Clark.\n\nSciTail.train_tsv()\nSciTail.train_jsonl()\nSciTail.dev_tsv()\nSciTail.dev_jsonl()\nSciTail.test_tsv()\nSciTail.test_jsonl()\n\n\n\n\n\n","category":"module"},{"location":"#ANLI-1","page":"Home","title":"ANLI","text":"","category":"section"},{"location":"#","page":"Home","title":"Home","text":"NLIDatasets.ANLI","category":"page"},{"location":"#NLIDatasets.ANLI","page":"Home","title":"NLIDatasets.ANLI","text":"ANLI\n\nFor details, see the GitHub page or read the 2019 paper.\n\nAvailable data:\n\nANLI.R1_train_jsonl()\nANLI.R1_dev_jsonl()\nANLI.R1_test_jsonl()\nANLI.R2_train_jsonl()\nANLI.R2_dev_jsonl()\nANLI.R2_test_jsonl()\nANLI.R3_train_jsonl()\nANLI.R3_dev_jsonl()\nANLI.R3_test_jsonl()\n\n\n\n\n\n","category":"module"}]
}
