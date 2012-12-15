# asa is an Any array
# this function is limited to it being formatted yyyy-MM-dd

# Calendar and UTF16 packages are required
# They are not in the code because of error compilation errors
# Will work to fix this, but not breaking a nut over it

function timevector(asa)

  usa = convert(Array{UTF16String}, asa)
  cta = map(x -> parse("yyyy-MM-dd", x), usa)

end











####### ## sa is a string array
####### ## ct_vec is filled with elements of type Calendar, otherwise
####### ## there is much agony, pain and a general state of frustration
####### 
####### ## wish list: refactor to pass only sa, return ct_vec and
####### ## clean up the middle, ugly parts
####### 
####### function timevector(sa)
####### 
####### load("~/git/Calendar.jl/src/Calendar.jl") 
####### 
####### ct_vec = fill(now(), length(sa))
####### 
####### for i in 1:length(sa)
#######   ct_vec[i] = parse("yyyy-MM-dd", sa[i])
####### end
####### 
####### ct_vec
####### 
####### end

