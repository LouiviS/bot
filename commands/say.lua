local Struct = {
    ['Name'] = "-say",
    ['Aliases'] = {
        '-dit',
        '-dis',
        '-di'},}   
Struct.Execute = function(Client, Message, Args)
    if not Args[2] then
        return Message:reply {
            embed = {
                title = "Erreur !!",
                description = 'Veuillez inscrire le message à envoyer.\nExemple: -say Salut tout le monde',
                footer = {
                    text = 'Demandé par ' .. Message.author.tag
                },
                color = 0xff0000
            }}
    end

    -- [[ Delete Args[1] ]]
    table.remove(Args, 1)
    local Content = table.concat(Args, " ")
    -- [[ Delete message ]]
    Message:delete()
    -- [[ Send required message as embed ]]
    return Message:reply {
        embed = {
            description = Content,
            footer = {
                text = "Envoyé par " .. Message.author.tag
            },
            color = 0x1ba8ce
        }}
end

return Struct