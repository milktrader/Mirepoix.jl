Mirepoix.jl
=========

Currently, this is a random collection of files. These are very
rough functions that do not take advantage of Julia's multiple
dispatch. Also, there is no error-checking.

# Functions

* `movingave` calculates a moving average.
* `loadSymbol` reads in a Yahoo time series. 
* `dailyReturn` calculates simple return. 
* `myotherdate` an experimental function to convert string to date. (almost identical to the one in `base/libc.jl`)

In this example, we have a file in directory called `AAPL.csv`.

```bash
✈  head AAPL.csv 
Date,Open,High,Low,Close,Volume,Adj Close
2012-11-23,567.17,572.00,562.60,571.50,9743800,571.50
2012-11-21,564.25,567.37,556.60,561.70,13321500,561.70
2012-11-20,571.91,571.95,554.58,560.91,22955500,560.91
2012-11-19,540.71,567.50,539.88,565.73,29404200,565.73
2012-11-16,525.20,530.00,505.75,527.68,45246200,527.68
2012-11-15,537.53,539.50,522.62,525.62,28211100,525.62
2012-11-14,545.50,547.45,536.18,536.88,17041800,536.88
2012-11-13,538.91,550.48,536.36,542.90,19033900,542.90
2012-11-12,554.15,554.50,538.65,542.83,18421500,542.83
```

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

Placeholder for Econometric algorithms.

# Onion

Placeholder for Trading algorithms.

# Carrot 

Placeholder for Machine Learning algorithms.

