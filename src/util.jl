function downloadzip(url, file)
    headers = ["User-Agent" => "NLIDatasets.jl",
               "Accept" => "*/*",
               "Accept-Encoding" => "gzip, deflate, br"]
    HTTP.download(url, file, headers)
end

