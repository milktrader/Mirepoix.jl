function DFwithtime(s) 

require("DataFrames")

    tkr = csvread(s)

    dat = ticker[2:end, 1]
    dat = flipud(dat)
    dat = convert(Array{ASCIIString}, dat)

    sym = tkr[2:end, 2:7] 
    sym = flipud(sym)
    sym = convert(Array{Float64}, sym)

  stock = DataFrame(quote
    Date = $(dat)
    Op  = $(sym[:,1]) 
    Hi  = $(sym[:,2])
    Lo  = $(sym[:,3])
    Cl  = $(sym[:,4])
    Vol = $(sym[:,5])
    Adj = $(sym[:,6])
  end);
end



