local Struct={}
Struct.Name="-say"
Struct.Aliases={
    '-dit',
    '-dis',
    '-di'}

Struct.Execute=function(Message)
    Message:reply("Commande Say")
end
return Struct