# this takes a DataFrame and returns the DataFrame with
# an additional column whose value is a simple moving average


function xoo(df::DataFrame, col::ASCIIString, n::Int64)

  new_col = strcat("ma.", string(10))

  function hoo(x,n)
    foo = [sum(x[i:i+(n-1)])/n for i=1:length(x)-(n-1)]
    bar = DataArray([zeros(n-1) ; foo])
    for i in 1:length(bar)
      if bar[i] == 0
        bar[i] = NA
      end
    end
    bar
  end


  within!(df, quote
    $new_col  = $hoo(vector($df["Close"]), 3)
        end);
  df
end

