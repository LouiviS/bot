local str = {}
-- [[ str.split() ]]
str.split = function(_str, separator)
    if separator == nil then separator = "%s" end
    local __str = {}
    for str_ in string.gmatch(_str, "([^" .. separator .. "]+)") do
        table.insert(__str, str_)
    end
    return __str
end
-- [[ Return Module ]]
return str