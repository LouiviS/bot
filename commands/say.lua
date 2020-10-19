local Struct = {}
Struct.Name = "-say"
Struct.Aliases = {
    '-dit',
    '-dis',
    '-di'
}

Struct.Execute = function(Client, Message, Args)
    Message:reply("Commande Say")
end

return Struct