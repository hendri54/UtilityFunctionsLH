module UtilityFunctionsLH

using ArgCheck, DocStringExtensions
export CRRA, utility, marginal_utility, cons_age1, cons_growth, cons_path,
    euler_deviation, lifetime_utility, mu_wealth,
    pv_consumption


# -------------  Types

abstract type UtilityFunction end
abstract type UtilityOneArg <: UtilityFunction end


"""
	$(SIGNATURES)

Utility = c^(1-sigma) / (1-sigma) - 1.0.
"""
mutable struct CRRA <: UtilityOneArg
    sigma  ::  Float64
    dbg  ::  Bool
 end
 
 

include("crra.jl")

end
