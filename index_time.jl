julia> s
10x7 DataFrame:
               Date  Open  High   Low Close   Volume Adj Close
[1,]     1970-01-02 92.06 93.54 91.79  93.0  8050000      93.0
[2,]     1970-01-05  93.0 94.25 92.53 93.46 11490000     93.46
[3,]     1970-01-06 93.46 93.81 92.13 92.82 11460000     92.82
[4,]     1970-01-07 92.82 93.38 91.93 92.63 10010000     92.63
[5,]     1970-01-08 92.63 93.47 91.99 92.68 10670000     92.68
[6,]     1970-01-09 92.68 93.25 91.82  92.4  9380000      92.4
[7,]     1970-01-12  92.4 92.67  91.2  91.7  8900000      91.7
[8,]     1970-01-13  91.7 92.61 90.99 91.92  9870000     91.92
[9,]     1970-01-14 91.92  92.4 90.88 91.65 10380000     91.65
[10,]    1970-01-15 91.65 92.35 90.73 91.68 11120000     91.68

julia> for i in s[:,1]
       println(month(i) == 1 && dayofweek(i) == 5)
       end
false
false
false
false
true
false
false
false
false
true

julia> check = falses(nrow(s))
10-element BitArray:
 false
 false
 false
 false
 false
 false
 false
 false
 false
 false

julia> for i in 1:nrow(s)
       check[i] =  dayofweek(spx[i,1]) == 5
       end

julia> check
10-element BitArray:
 false
 false
 false
 false
  true
 false
 false
 false
 false
  true



julia> within!( s, quote
              friday = DataVec($(check))
              end)
10x8 DataFrame:
               Date  Open  High   Low Close   Volume Adj Close friday
[1,]     1970-01-02 92.06 93.54 91.79  93.0  8050000      93.0  false
[2,]     1970-01-05  93.0 94.25 92.53 93.46 11490000     93.46  false
[3,]     1970-01-06 93.46 93.81 92.13 92.82 11460000     92.82  false
[4,]     1970-01-07 92.82 93.38 91.93 92.63 10010000     92.63  false
[5,]     1970-01-08 92.63 93.47 91.99 92.68 10670000     92.68   true
[6,]     1970-01-09 92.68 93.25 91.82  92.4  9380000      92.4  false
[7,]     1970-01-12  92.4 92.67  91.2  91.7  8900000      91.7  false
[8,]     1970-01-13  91.7 92.61 90.99 91.92  9870000     91.92  false
[9,]     1970-01-14 91.92  92.4 90.88 91.65 10380000     91.65  false
[10,]    1970-01-15 91.65 92.35 90.73 91.68 11120000     91.68   true


julia> s[s["friday"] .== true]
2x8 DataFrame:
              Date  Open  High   Low Close   Volume Adj Close friday
[1,]    1970-01-08 92.63 93.47 91.99 92.68 10670000     92.68   true
[2,]    1970-01-15 91.65 92.35 90.73 91.68 11120000     91.68   true





