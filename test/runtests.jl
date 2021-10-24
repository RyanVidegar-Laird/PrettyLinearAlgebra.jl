using PrettyLinearAlgebra
using Test
using LinearAlgebra

@testset "PrettyLinearAlgebra.jl" begin
    v1 = [1, 5, 9, 99]
    m1 = [1 5 9; 4 3 1; 33 44 55]
    
    @test matex(v1) == "\\begin{bmatrix} 1 \\\\ 5 \\\\ 9 \\\\ 99\\end{bmatrix}"
    @test matex(m1) == "\\begin{bmatrix}1 & 5 & 9 \\\\ 4 & 3 & 1 \\\\ 33 & 44 & 55\\end{bmatrix}"
end
