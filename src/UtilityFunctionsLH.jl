module UtilityFunctionsLH

export CRRA, utility, marginal_utility, cons_growth, cons_path,
    euler_deviation, lifetime_utility,
    pv_consumption

abstract type UtilityFunction end
abstract type UtilityOneArg <: UtilityFunction end

include("crra.jl")

end
