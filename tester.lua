
local plr = game.Players.LocalPlayer
local dataFolder = plr:WaitForChild("Data")
local units = dataFolder:FindFirstChild("OwnedUnits").Value
local search = string.find(units, getgenv().UnitsToFind)
local found = nil

if search then
    warn("Found: ", getgenv().UnitsToFind)
    found = true
else
    warn("Can't find: ", getgenv().UnitsToFind)
    found = false
end
local data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["author"] = { ["name"] = "Unit Finder by Gosling.GG"},
            ["description"] = 
                "**Username:** " .. "||" .. plr.Name .. "||" .. "\n" .. 
                "**Unit target:** " .. getgenv().UnitsToFind .. "\n" .. 
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
local caller = {Url = getgenv().hookinghook, Body = newdata, Method = "POST", Headers = headers}

request(caller)
