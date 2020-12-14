module UtilityFunctionsLH

using ArgCheck, DocStringExtensions
export CRRA, utility, marginal_utility, cons_age1, cons_growth, cons_path,
    euler_deviation, lifetime_utility, mu_wealth,
    pv_consumption
export discounted_sum


# -------------  Types

abstract type UtilityFunction end
abstract type UtilityOneArg <: UtilityFunction end


"""
	$(SIGNATURES)

Utility = c^(1-sigma) / (1-sigma) - 1.0.

Log utility is special case when `sigma == 1.0`.
"""
mutable struct CRRA <: UtilityOneArg
    sigma  ::  Float64
    dbg  ::  Bool
 end

 
include("crra.jl")


## ---------  Helpers


"""
	$(SIGNATURES)

Discounted sum: `xV[1] + ... + pBeta ^ (T-1) * xV[T]`
"""
function discounted_sum(pBeta :: T1, xV) where T1 <: AbstractFloat
    T = length(xV);
    s = zero(eltype(xV));
    for t = T : -1 : 1
        s = pBeta * s + xV[t];
    end
    return s
end


# Vector with constant growth factor
function const_growth_vector(c1 :: T1, 
    growthFactor :: T1, T :: Integer) where T1 <: AbstractFloat

    cV = Vector{T1}(undef, T);
    ct = c1;
    for j in eachindex(cV)
        cV[j] = ct;
        ct *= growthFactor;
    end
    return cV
end


# Sum of a constant growth vector: 1 + growthFactor + ... + growthFactor ^ (T-1)
function const_growth_sum(growthFactor :: T1, T :: Integer) where T1
    if isapprox(growthFactor, one(T1))
        gSum = T1(T);
    else
        gSum = (one(T1) - growthFactor ^ T) / (one(T1) - growthFactor);
    end
    return gSum
end


end # module