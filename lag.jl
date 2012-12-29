function lag(x,y)
  if y == 1
    "NA"
  elseif y > length(x)
    "Yer outta bounds!"
  else
    x[y-1]
  end
end

 
