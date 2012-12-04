## sa is a string array
## ct_vec is filled with elements of type Calendar, otherwise
## there is much agony, pain and a general state of frustration

## wish list: refactor to pass only sa, return ct_vec and
## clean up the middle, ugly parts

function timevector(sa)

load("~/git/Calendar.jl/src/Calendar.jl") 

ct_vec = fill(now(), length(sa))

for i in 1:length(sa)
  ct_vec[i] = parse("yyyy-MM-dd", sa[i])
end

ct_vec

end

