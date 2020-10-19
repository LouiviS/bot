local Discord=require("discordia")
local Client=Discord.Client()
local Commands={
    help=require("commands/help"),
    ping=require("commands/ping"),
    say=require("commands/say"),}
Client:on("messageCreate",function(Message)
    local Content=Message.content
    for index,value in pairs(Commands) do
        if Content:lower()==Commands[index].Name then
            Commands[index].Execute(Message)
            return
        end
        for i,v in pairs(Commands[index].Aliases) do
            if Content:lower()==v then
                Commands[index].Execute(Message)
                return
            end
        end
    end
end)
Client:run("Bot "..io.open("./login.txt"):read())