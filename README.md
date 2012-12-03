Mirepoix.jl
=========

Currently, this is a random collection of files. These are very
rough functions that do not take advantage of Julia's multiple
dispatch. Also, there is no error-checking.

# Functions

* `movingave` calculates a moving average.
* `myotherdate` is an experimental function to convert string to date.
* `loadSymbol` reads in a Yahoo time series. 
* `dailyReturn` calculates simple return. 

In this example, we have a file in directory called `AAPL.csv`


```julia


julia> load("loadSymbol.jl")

julia> load("dailyReturn.jl")

julia> load("movingave.jl")

julia> AAPL = loadSymbol("AAPL.csv")
7116-element Float64 Array:
   3.0 
   2.98
   3.04
   2.95
   3.11
   3.15
   ⋮   
 527.68
 565.73
 560.91
 561.7 
 571.5 

julia> AAPL_withreturns = dailyReturn(AAPL)
7116x2 Float64 Array:
   3.0    0.0       
   2.98  -0.00666667
   3.04   0.0201342 
   2.95  -0.0296053 
   3.11   0.0542373 
   3.15   0.0128617 
   ⋮                
 527.68   0.00391918
 565.73   0.0721081 
 560.91  -0.00851997
 561.7    0.00140843
 571.5    0.017447 

julia> AAPL_50sma = movingave(AAPL, 50)
7116-element Float64 Array:
   0.0  
   0.0  
   0.0  
   0.0  
   0.0  
   0.0  
   ⋮    
 629.383
 627.234
 624.905
 622.944
 621.222
```
# Celery

Placeholder for future Econometric algorithms

# Onion

Placeholder for future  Trading algorithms

# Carrot Machine Learning algorithms
