local Struct = {}
Struct.Name = "-help"
Struct.Aliases = {
    '-aide'
}

Struct.Execute = function(Client, Message, Args)
    Message:reply {
        embed = {
            title = "Liste des commandes",
            description = "help",
            footer = {
                text = "Demandé par " .. Message.author.tag
            },
            color = 0x1ba8ce
        }
    }
end

return Struct