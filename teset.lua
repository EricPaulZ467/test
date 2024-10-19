_G.Webhook = "https://discord.com/api/webhooks/1297127324067565568/C32CspF4obMUqIdQGtz5dIcoPkJtxxC6ob3DhseDvdcnsGV3TMRPz4YRnOG2522Fj-j2"


local plr = game.Players.LocalPlayer
local dataFolder = plr:WaitForChild("Data")
local units = dataFolder:FindFirstChild("OwnedUnits").Value
local search = string.find(units, _G.UnitsToFind)
local found = nil

if search then
    warn("Found: ", _G.UnitsToFind)
    found = true
else
    warn("Can't find: ", _G.UnitsToFind)
    found = false
end
local data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["author"] = { ["name"] = "AWTD Unit Finder by Gosling.GG"},
            ["description"] = 
                "**Username:** " .. "||" .. plr.Name .. "||" .. "\n" .. 
                "**Unit target:** " .. _G.UnitsToFind .. "\n" .. 
                "**Status:** " .. tostring(found) .. "\n" ..
                "**Date:** " .. tostring(os.date("%d/%m/%Y")) .. "\n" ..
                "**Time:** " .. tostring(os.date("%X")) .. "\n\n" ..
                "**Units Data:** " .. "```" .. units .. "```"
        }
    }
}

local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = { ["content-type"] = "application/json"}
local request = http_request or request or HttpPost or syn.request
local caller = {Url = _G.Webhook, Body = newdata, Method = "POST", Headers = headers}

request(caller)
