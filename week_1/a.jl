function myfunc()
    A = rand(Float64, (10000,1))
    B = rand(Float64, (10000,1))
    for i = 1:10000 
        A[i] * B[i]
    end
end

myfunc()

@time myfunc()

function myfuncII()
    A = rand(Float64, (10000,1))
    B = rand(Float64, (10000,1))
    A .* B
end
myfuncII()
@time myfuncII()
