
strftime(t) = strftime("%Y-%m-%d", t)
function strftime(fmt::ByteString, t)
    tmstruct = Array(Int32, 14)
    ccall(:localtime_r, Ptr{Void}, (Ptr{Int}, Ptr{Int32}), &t, tmstruct)
    timestr = Array(Uint8, 128)
    n = ccall(:strftime, Int, (Ptr{Uint8}, Int, Ptr{Uint8}, Ptr{Int32}),
              timestr, length(timestr), fmt, tmstruct)
    if n == 0
        return ""
    end
    bytestring(convert(Ptr{Uint8},timestr))
end

strptime(timestr::ByteString) = strptime("%Y-%m-%d", timestr)
function strptime(fmt::ByteString, timestr::ByteString)
    tmstruct = Array(Int32, 14)
    r = ccall(:strptime, Ptr{Uint8}, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Int32}),
              timestr, fmt, tmstruct)
    if r == C_NULL
        error("strptime: invalid arguments")
    end
    float64(ccall(:mktime, Int, (Ptr{Int32},), tmstruct))
end
