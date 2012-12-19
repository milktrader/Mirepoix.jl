ba> foo = read_table("data/AAPL.csv");

julia> head(foo, 2)
2x7 DataFrame:
                Date   Open   High   Low Close   Volume Adj Close
[1,]    "2012-11-23" 567.17  572.0 562.6 571.5  9743800     571.5
[2,]    "2012-11-21" 564.25 567.37 556.6 561.7 13321500     561.7


julia> typeof(foo[:,1])
DataVec{ASCIIString}

julia> typeof(foo[:,2])
DataVec{Float64}

julia> map(x -> parse("yyyy-MM-dd", x),  foo[:,1])
no method map(Function,DataVec{ASCIIString})

julia> bar = map(x -> parse("yyyy-MM-dd", x), convert(Array{UTF16String}, foo[:,1]))
7116-element CalendarTime Array:
 Nov 23, 2012 12:00:00 AM EST
 Nov 21, 2012 12:00:00 AM EST

julia> bing = DataVec(map(x -> parse("yyyy-MM-dd", x), vector(foo[:, 1])));


julia> head(bing)
6-element CalendarTime DataVec
 Nov 23, 2012 12:00:00 AM EST
 Nov 21, 2012 12:00:00 AM EST




