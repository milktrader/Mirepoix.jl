julia> a = csvread("data/AAPL.csv")
7117x7 Any Array:
"Date"           "Open"     "High"     "Low"     "Close"   "Volume"     "Adj Close"
 "2012-11-23"  567.17     572.0      562.6     571.5       9.7438e6   571.5         
 "2012-11-21"  564.25     567.37     556.6     561.7       1.33215e7  561.7     

julia> b = convert(Array{UTF16String}, a[2:end,1])
7116-element UTF16String Array:
 "2012-11-23"
 "2012-11-21"
 "2012-11-20"

julia> c = map(x -> parse("yyyy-MM-dd", x), c)
7116-element CalendarTime Array:
 Nov 23, 2012 12:00:00 AM EST
 Nov 21, 2012 12:00:00 AM EST

julia> df = DataFrame(quote
         Date = $(c)
       end);

julia> head(df,2)
2x1 DataFrame:
                                Date
[1,]    Nov 23, 2012 12:00:00 AM EST
[2,]    Nov 21, 2012 12:00:00 AM EST

julia> typeof(df[1])
DataVec{CalendarTime}
