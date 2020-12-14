# Profiling
# Activate the profiling environment before calling this.
# `using UtilityFunctionsLH` must be issued while that package is active.

# using UtilityFunctionsLH
using Profile, StatProfilerHTML, BenchmarkTools

uf = UtilityFunctionsLH;

function profile_lifetime_utility()
    b = @benchmarkable  uf.lifetime_utility(CRRA(2.0, false), 0.96, 1.05, 30, 75.0)
    @show run(b)

    Profile.clear();
    @profile begin
    	for i1 = 1 : 1e7
	    	uf.lifetime_utility(CRRA(2.0, false), 0.96, 1.05, 30, 75.0);
		end
	end
    Profile.print(maxdepth = 8, mincount = 50)

    statprofilehtml()
    
end




# ----------