local Struct={}
Struct.Name="-help"
Struct.Aliases={
    '-aide'}

Struct.Execute=function(Message)
    Message:reply("Commande Help")
end
return Struct