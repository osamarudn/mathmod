1032209334 % 70 +1

using Plots
using DifferentialEquations

n = 4.2
s = 16.4
fi = 3*pi/4

function f(r, p, t)
    dr = r/sqrt(n^2-1)
    return dr
end

function f2(t)
    xt = tan(fi+pi)*t
    return xt
end

r0 = s/(n+1)

tetha0 = collect(LinRange(0, 2*pi, 1000))
    
problem = ODEProblem(f, r0, (0, 2*pi))
sol = solve(problem, saveat=tetha0)

t = collect(LinRange(0, 10, 1000))
r1=[]
tetha1=[]
for i in t
    push!(r1, sqrt(i^2 + f2(i)^2))
    push!(tetha1, atan(f2(i)/i))
end

plot(sol, proj=:polar, label="катер")
plot!(tetha1, r1, proj=:polar, label="лодка")

savefig("1.png")

r0 = s/(n-1)

tetha0 = collect(LinRange(0, 2*pi, 1000))
    
problem = ODEProblem(f, r0, (0, 2*pi))
sol = solve(problem, saveat=tetha0)

t = collect(LinRange(0, 22, 1000))
r1=[]
tetha1=[]
for i in t
    push!(r1, sqrt(i^2 + f2(i)^2))
    push!(tetha1, atan(f2(i)/i))
end

plot(sol, proj=:polar, label="катер")
plot!(tetha1, r1, proj=:polar, label="лодка")

savefig("2.png")


