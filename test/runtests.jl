using NLIDatasets, Test

@testset "NLIDatasets.jl" begin

    @testset "SNLI" begin
        @test isfile(train_tsv(SNLI))
        @test isfile(train_jsonl(SNLI))
        @test isfile(dev_tsv(SNLI))
        @test isfile(dev_jsonl(SNLI))
        @test isfile(test_tsv(SNLI))
        @test isfile(test_jsonl(SNLI))
    end

    @testset "MultiNLI" begin
        @test isfile(train_tsv(MultiNLI))
        @test isfile(train_jsonl(MultiNLI))
        @test isfile(dev_matched_tsv(MultiNLI))
        @test isfile(dev_matched_jsonl(MultiNLI))
        @test isfile(dev_mismatched_tsv(MultiNLI))
        @test isfile(dev_mismatched_jsonl(MultiNLI))
    end

    @testset "XNLI" begin
        @test isfile(dev_tsv(XNLI))
        @test isfile(dev_jsonl(XNLI))
        @test isfile(test_tsv(XNLI))
        @test isfile(test_jsonl(XNLI))
    end

    @testset "SciTail" begin
        @test isfile(train_tsv(SciTail))
        @test isfile(train_jsonl(SciTail))
        @test isfile(dev_tsv(SciTail))
        @test isfile(dev_jsonl(SciTail))
        @test isfile(test_tsv(SciTail))
        @test isfile(test_jsonl(SciTail))
    end

    @testset "HANS" begin
        @test isfile(test_tsv(HANS))
    end

    @testset "Breaking_NLI" begin
        @test isfile(test_jsonl(BreakingNLI))
    end
end
