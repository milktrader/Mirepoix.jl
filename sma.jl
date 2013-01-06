function sma(x,n)
  foo = [mean(x[i:i+(n-1)]) for i=1:length(x)-(n-1)]
  bar = [nas(DataVector[float(n)], n-1) ; foo]
  bar
end
