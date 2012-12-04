## sa is a string array
## ctseed is a Calendar array (very kludgy, I know)
## ct_type is an instance of the Calendar type
## ct_vec is filled with elements of type Calendar, otherwise
## there is much agony, pain and a general state of frustration

## wish list: refactor to pass only sa, return ct_vec and
## clean up the middle, ugly parts

function timevector(sa, ctseed)

require("Calendar")

ct_type = ctseed[1]

ct_vec = fill(ct_type, length(sa))

for i in 1:length(sa)
  ct_vec[i] = parse("yyyy-MM-dd", sa[i])
end

ct_vec

end

