local Events = require("events")
local Discord = require("discordia")

local Client = Discord.Client()
-- [[ Load Events ]]
Events.load(Client)

-- [[ Run bot as TOKEN ]]
Client:run("Bot " .. io.open("./login.txt"):read())