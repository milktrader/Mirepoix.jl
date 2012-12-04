function DFstock(s) 

require("DataFrames")

    sym = csvread(s)
    sym = sym[2:end, 2:7] 
    sym = flipud(sym)
    sym = float64(sym)

  stock = DataFrame(quote
    Op  = $(sym[:,1]) 
    Hi  = $(sym[:,2])
    Lo  = $(sym[:,3])
    Cl  = $(sym[:,4])
    Vol = $(sym[:,5])
    Adj = $(sym[:,6])
  end);
end


