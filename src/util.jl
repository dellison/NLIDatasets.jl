function downloadzip(url, file)
    headers = ["User-Agent" => "NLIDatasets.jl",
               "Accept" => "*/*",
               "Accept-Encoding" => "gzip, deflate, br"]
    HTTP.download(url, file, headers)
end


for f in [:train_tsv, :train_jsonl, :dev_tsv, :dev_jsonl,
          :dev_matched_tsv, :dev_matched_jsonl, :dev_mismatched_tsv, :dev_mismatched_jsonl,
          :test_tsv, :test_jsonl]
    @eval $f(t::Type{<:NLIDataset}) = $f(t())
end
