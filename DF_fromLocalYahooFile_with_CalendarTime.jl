# compilation errors with loading packages

function DF_CalendarTime(s) 

# load("DataFrames")
# load("UTF16")
# using DataFrames
# using UTF16

    tkr = csvread(s)

    dat = tkr[2:end, 1]
    dat = flipud(dat)
    dat = convert(Array{UTF16String}, dat)
    cal = map(x -> parse("yyyy-MM-dd", x), c) 

    sym = tkr[2:end, 2:7] 
    sym = flipud(sym)
    sym = convert(Array{Float64}, sym)

  stock = DataFrame(quote
    Date = $(cal[:])
    Op  = $(sym[:,1]) 
    Hi  = $(sym[:,2])
    Lo  = $(sym[:,3])
    Cl  = $(sym[:,4])
    Vol = $(sym[:,5])
    Adj = $(sym[:,6])
  end);
end



