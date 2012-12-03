
function loadSymbol(s)

  sym = csvread(s)
  sym = sym[2:end, 2:7] # only get the adjusted Yahoo price
  sym = flipud(sym)
  sym = float64(sym)

end
