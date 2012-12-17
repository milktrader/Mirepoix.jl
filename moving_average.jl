function moving_average(x,n)
  [sum(x[i:i+(n-1)])/n for i=1:length(x)-(n-1)]
end
