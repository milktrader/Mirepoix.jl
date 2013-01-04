function sma(x,n)
  foo =  [sum(x[i:i+(n-1)])/n for i=1:length(x)-(n-1)]
  bar = [zeros(n-1) ; foo]
        
  for i in 1:length(bar)
    if bar[i] == 0
      bar[i] = NA
  end

  bar
end