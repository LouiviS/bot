local Struct = {}
Struct.Name = "-ping"
Struct.Aliases = {
    '-ms'
}

Struct.Execute = function(Client, Message, Args)
    Message:reply("Commande ping")
end

return Struct