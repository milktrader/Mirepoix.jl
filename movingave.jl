function movingave(x,n)

y = [sum(x[i:i+(n-1)])/n for i=1:length(x)-(n-1)]

z = [zeros(n-1) ; y]

end
