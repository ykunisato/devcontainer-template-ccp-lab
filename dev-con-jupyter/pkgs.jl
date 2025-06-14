using Pkg
# インストールするパッケージ
pkgs_to_add = [
    "ActiveInference",
    "ActionModels",
    "CSV",
    "DataFrames",
    "Distributions",
    "Flux",
    "Plots",
    "POMDPs",
    "POMDPModelTools",
    "RxInfer",
    "StatsPlots"
]
# パッケージをインストール
for pkg in pkgs_to_add
    Pkg.add(pkg)
end
# プリコンパイルを実行
Pkg.precompile()