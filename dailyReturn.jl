function dailyReturn(x)

  logReturn    = diff(log(x))
  simpleReturn = expm1(logReturn) 
  RET          = [0 ; simpleReturn]
  ret          = [0 ; logReturn]
                  
  x = [x  RET]
  
end


