local Struct={}
Struct.Name="-ping"
Struct.Aliases={
    '-ms'}
Struct.Execute=function(Message)
    Message:reply("Commande Ping")
end
return Struct