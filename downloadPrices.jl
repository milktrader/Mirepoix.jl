function downloadPrices()

  foo = readlines(`curl -s "http://ichart.finance.yahoo.com/table.csv?s=AAPL"`);
  
  bar = foo[2:end]
  baz  = split(bar[1], ',')'
  
  for i in 2:length(bar) 
    baz  = [baz ; split(bar[i], ',')']
  end

  return baz

end
