local Struct = {}
Struct.Name = "info"
Struct.Aliases = {
    '-informations',
    '-information'}

Struct.Execute = function(Client, Message, Args)
    Message:reply("config")
end

return Struct