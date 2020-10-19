local Events = require("events")
local Discord = require("discordia")
local Client = Discord.Client()

Events.load(Client)

Client:run("Bot " .. io.open("./login.txt"):read())