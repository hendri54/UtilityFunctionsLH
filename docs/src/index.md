# UtilityFunctionsLH

```@meta
CurrentModule = UtilityFunctionsLH
```

Utility functions for economic models.

Defines the abstract type `UtilityFunction` with subtype `UtilityOneArg` for utility functions that take one argument, such as `u(c)`.

Specific one argument utility functions defined at this point:

```@docs
CRRA
```

A utility function supports the following methods:

```@docs
utility
marginal_utility
euler_deviation
cons_growth
pv_consumption
cons_age1
cons_path
lifetime_utility
mu_wealth
```

-------------