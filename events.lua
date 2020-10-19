local Events = {}
-- [[ Split Function ]]
local split = require("utils/str").split
-- [[ Commands List ]]
local Commands = {
    help = require("commands/help"),
    ping = require("commands/ping"),
    say = require("commands/say"),
    info = require("commands/info")
}
-- [[ Events.load() ]]
Events.load = function(Client)
    -- [[ Bot ready ]]
    Client:on('ready', function()
        print(Client.user.tag .. " en ligne !")
    end) 
    -- [[ New message ]]
    Client:on("messageCreate", function(Message)
        local Content = Message.content
        local Args = split(Content, " ")
        -- [[ Return if author is a bot ]]
        if Message.author.bot then return end
        -- [[ Loop Commands List ]]
        for index, value in pairs(Commands) do
            -- [[ Command ]]
            if Args[1]:lower() == Commands[index].Name then
                Commands[index].Execute(Client, Message, Args)
                return
            end
            -- [[ Aliases ]]
            for i, v in pairs(Commands[index].Aliases) do
                if Args[1] == v then
                    Commands[index].Execute(Client, Message, Args)
                    return
                end
            end
        end
    end)       
end
-- [[ Return module ]]
return Events