function DFstockdownloaded(sa)

require("DataFrames")

df = DataFrame(quote

# Date     = sa[:,1]
 Open     = float64(sa[:,2])
 High     = float64(sa[:,3])
 Low      = float64(sa[:,4])
 Close    = float64(sa[:,5])
 Volume   = int64(sa[:,6])
 Adjusted = float64(sa[:,7])
end);

end
