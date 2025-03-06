--[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠾⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⠻⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠞⠋⠀⢠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡄⠀⠉⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣴⠟⠁⣴⠟⢠⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⠀⢾⣆⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⡾⠃⢠⣾⡏⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡇⠀⢿⣧⡀⠘⢷⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣾⠁⢠⣿⣿⠁⠀⢸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠀⢸⣿⣷⡀⠘⣷⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣾⠃⢀⣿⣿⣿⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⢸⣿⣿⣧⠀⠸⣧⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣰⡏⠀⣼⣿⣿⣿⠀⠀⢸⡇⠀⠀⠀⠀⠀⣀⣤⣴⠶⠛⠛⠛⠛⠙⠛⠛⠛⠛⠶⢦⣤⣀⠀⠀⠀⠀⠀⣸⠇⠀⣸⣿⣿⣿⡇⠀⢿⡆⠀⠀⠀⠀
⠀⠀⠀⠀⣿⠃⠀⣿⣿⣿⣿⣧⠀⠀⢻⡄⢀⣤⠶⠛⢉⣀⣤⣴⣶⣶⣶⣶⣶⣶⣶⣶⣶⣤⣄⣀⠉⠛⠶⣤⡀⢠⡟⠀⢀⣿⣿⣿⣿⣷⠀⢸⡇⠀⠀⠀⠀
⣶⣶⣴⡆⣿⠀⠀⣿⣿⣿⣿⣿⣧⡀⠀⠛⠋⢁⣤⣀⣙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣉⣤⣄⡈⠙⠿⠀⢠⣿⣿⣿⣿⣿⣿⠀⢸⡇⠀⣠⠀⠀
⣿⠀⢹⣇⣿⡄⠀⣿⣿⣿⣿⣿⣿⣿⣦⣄⣀⡈⠉⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⠉⢁⣀⣠⣾⣿⣿⣿⣿⣿⣿⡿⠀⢸⣧⣰⠏⠀⡄
⣿⠀⢀⠹⣿⣧⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⢺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢀⣿⣿⠏⠀⢀⡟
⣿⡄⢻⣆⠘⢿⣇⠀⠹⣿⣿⣿⣿⣿⣿⢿⣿⠋⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠻⣿⠟⣹⣿⣿⣿⣿⣿⠋⠀⣼⡿⢃⣴⠟⢸⡇
⢿⡇⠀⣿⣷⣄⠙⢷⣄⠈⠻⢿⣿⡿⠿⠟⠁⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠙⠿⠿⠿⠿⠛⠋⠁⣠⡾⠋⣠⣿⢇⠀⣼⠇
⠈⣿⠀⣿⡟⢿⣷⡀⠉⠓⣤⣤⣤⣤⣤⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣤⣀⣤⣤⡴⠾⢏⣰⣿⠟⣱⡟⢡⡟⠀
⠀⢹⣆⠘⣿⣦⡉⠻⠗⠂⣿⣿⣿⣿⡟⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⣿⣿⣿⣿⣷⠀⣿⠛⢡⣤⣿⠁⣸⠇⠀
⠀⠀⢿⡄⢻⣿⣧⣶⣤⡀⠙⣿⣿⣿⣥⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⣿⣿⣇⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣼⣿⣿⡿⡇⣠⣴⣾⣿⣿⠇⢠⡿⠀⠀
⠀⠀⠈⢷⡈⠻⣿⣿⣿⣿⡆⢸⣿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⡏⠀⢸⣿⣿⣿⡿⠋⢠⡾⠁⠀⠀
⠀⠀⠀⠀⠻⢦⡈⠻⢿⣿⠀⣸⣿⣿⣶⣄⠀⠈⢙⡛⠻⢿⣿⣿⣿⣿⢸⣿⣿⣿⠉⣿⣿⣿⣿⠿⠟⢛⡉⠁⢀⣴⣾⣿⣿⡆⠸⣿⣿⠋⣀⡴⠏⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠙⢷⣄⠀⣼⣿⣿⣿⣿⣿⣷⣦⡘⠛⠷⠶⠀⠉⠛⣛⢺⣿⣿⣿⠀⠿⠛⠉⠠⠶⠾⠛⣃⣴⣿⣿⣿⣿⣿⣿⡄⠉⣹⡾⠋⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢻⡆⠛⢿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⣰⡟⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣦⠀⠙⢿⣿⡿⠿⠛⢻⣛⣻⣿⣿⣿⣿⡿⣿⣿⣿⣿⡿⣽⣿⣿⣿⣿⣛⣛⠛⠻⠿⣿⣿⡿⠋⢀⣼⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⣄⠈⠻⣿⣦⣀⡈⠻⢿⣿⣿⣿⣿⠃⣼⣿⣿⣿⣇⢸⣿⣿⣿⣿⡿⠋⣀⣀⣼⣿⠋⠀⣴⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡄⠀⣿⣿⣿⣿⣄⠈⠻⣿⣿⡏⠸⣿⣿⣿⣿⡿⠀⣿⣿⡿⠋⠀⣴⣿⣿⣿⡇⠀⣸⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⠀⢹⣿⣿⣿⣿⡎⢻⣦⣙⠛⠂⠈⢿⣿⡟⠁⠺⢛⣩⣴⠾⣾⣿⣿⣿⣿⠇⢠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⣄⡈⠙⢿⣿⣿⡄⢙⡛⠻⣿⢶⡼⠟⠠⢾⡿⠛⢟⠁⣰⣿⣿⠟⠉⢀⣴⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠹⣶⡀⠉⢿⣷⡘⢿⣶⣦⣤⣅⣀⣠⣤⣶⣷⡿⢡⣿⡟⠁⢠⣴⠏⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⡄⠈⣿⣷⣤⡉⠛⠻⠿⠿⠿⠟⠛⣉⣴⣿⣿⠀⣠⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⣄⠉⠻⣿⣿⣷⣶⣶⣿⣶⣶⣿⣿⣾⠟⠁⣠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠈⢿⣿⣿⣿⣿⣿⣿⣿⠟⠁⣠⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣦⠀⠻⢿⣿⣿⣿⠿⠋⠀⣴⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⢶⣤⣤⣤⣤⣤⡴⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]
-- credit to rayfield for library









local a
a = 0

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Tab Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Tab Hub",
   LoadingSubtitle = "by someoneus",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Tab Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Scripts", "scroll-text")
local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Section = Tab:CreateSection("Section 1")

local Button = Tab:CreateButton({
   Name = "Dead Rails - Lunor",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Just3itx/Lunor-Loadstrings/refs/heads/main/Loader'))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Fisch - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Blox Fruit - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Doors - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Doors.lua"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Blox fruit - HoHo hub (Crack)",
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
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Blue Lock: RIVALS",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BLRTBDMOBILEKEYSYS",true))()
			a = a + 1
   end,
})

local Section = Tab:CreateSection("Section 2")


local Button = Tab:CreateButton({
   Name = "PLS Donate",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Ahmadv999/PleaseDondate/refs/heads/main/PleaseDonateScript'))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "The Rake Remastered",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/9ccd19089cb4d74bd2ac8902fb910027.lua"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Brookhaven FE Play sounds (cannot play sounds more than 2s)",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/ameicaa0/brookhaven/refs/heads/main/brookhaven%20script.txt"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Evade - VHNS",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/fratelevostru9999/src/refs/heads/main/evade%20vhns",true))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Brookhaven Admin",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://apocscripts.com/ApocHub.txt"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Natural Disaster - Super ring",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-Super-ring-V4-24296"))()
			a = a + 1
   end,
})


local Button = Tab:CreateButton({
   Name = "Prison Life - WhiteLkidd",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealNihilize/WhiteLkidd-hub/refs/heads/main/Prison%20life%20Hub"))()
			a = a + 1
   end,
})


local Section = Tab:CreateSection("Section 3")

local Button = Tab:CreateButton({
   Name = "Zombie Attack - Voidz",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/RTrade/Voidz/main/Games.lua'),true))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Muscle Legends - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Muscle Legends - Vamp",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/QRTUI10/Vamp/refs/heads/main/Free%20Version"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Size Legends Simulator",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
getgenv().Color = "default" --[[white,black, brown,green,cyan,blue,pink,purple,red,yellow,orange ]]--
getgenv().TextColor = "default" --[[ rgb,white,black, brown,green,cyan,blue,pink,purple,red,yellow,orange ]]--
loadstring(game:HttpGet("https://raw.githubusercontent.com/rndmq/Serverlist/refs/heads/main/Loader"))()
			a = a + 1
   end,
})


local Button = Tab:CreateButton({
   Name = "be dead forever simulator",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- scirpt is made by invertedTh and is also the first best sicrpt for bdsf enjoy it while it lasted and also give feedback if something is broken
loadstring(game:HttpGet("https://raw.githubusercontent.com/invertedth/kewlzhubbdfs/refs/heads/main/Bdsf.lua"))()
			a = a + 1
   end,
})





local Tab = Window:CreateTab("Key-Scripts", "key-round")

local Section = Tab:CreateSection("Section 1")
local Section = Tab:CreateSection("Section 2")
local Section = Tab:CreateSection("Section 3")

local Tab = Window:CreateTab("Hub's", "shell")

local Section = Tab:CreateSection("Section 1")

local Button = Tab:CreateButton({
   Name = "Troll Animation",
   Callback = function()
   -- The function that takes place when the button is pressed    
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ShutUpJamesTheLoser/freaky/refs/heads/main/fe", true))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "FE R6 Anims",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/redxs-dosx/R6-Anim-Hub/refs/heads/main/Hub%20Script%20(.lua)'))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "FE R6 Animation",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitFin/AquaMatrix/refs/heads/AquaMatrix/AquaMatrix"))()
			a = a + 1
   end,
})


local Section = Tab:CreateSection("Section 2")

local Button = Tab:CreateButton({
   Name = "RoChips",
   Callback = function()
   -- The function that takes place when the button is pressed
    if "you wanna use rochips universal" then
	    local z_x,z_z="gzrux646yj/raw/main.ts","https://glot.io/snippets/"
	    local im,lonely,z_c=task.wait,game,loadstring
	    z_c(lonely:HttpGet(z_z..""..z_x))()
	    return ("This will load in about 2 - 30 seconds" or "according to your device and executor")
    end
			a = a + 1
end,
})

local Section = Tab:CreateSection("Section 3")

local Button = Tab:CreateButton({
   Name = "Chat Bypass",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://pastebin.com/raw/aqmCAz7b"))()
			a = a + 1
   end,
})

local Tab = Window:CreateTab("Other", "computer")



local Section = Tab:CreateSection("Section 1")

local Button = Tab:CreateButton({
   Name = "LALOL Backdoor",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Micro Backdoor",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://paste.ee/r/GipgWZb8"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "SolSpy (for executor than doesn't support RemoteSpy)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://gist.githubusercontent.com/Uylost/960b592d7fc7161c3e6de0047547d874/raw/cc0e9ca436afe2c3e253fdb357d1a61efd576098/gistfile1.txt"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "More UNC (for low power executor)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-MoreUNC-13110"))()
			a = a + 1
   end,
})

local Section = Tab:CreateSection("Section 2")

local Button = Tab:CreateButton({
   Name = "Black hole",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://pastebin.com/raw/tstrtDFD"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Super Ring",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/chesslovers69/Super-ring-parts-v6/refs/heads/main/Bylukaslol"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Internal executor - RoExec",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://gist.githubusercontent.com/Axchs/af0848c3885194d54f2c181562675126/raw/96862bc46256bcadde0df0cd799cc7a998bcad82/gistfile1.txt"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Server Finder",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RealBatu20/AI-Scripts-2025/refs/heads/main/LowServerFinderGUI.lua", true))()
			a = a + 1
   end,
})

local Section = Tab:CreateSection("Section 3")

local Button = Tab:CreateButton({
   Name = "Internal executor - UI (pc only)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Other-Stuff/main/ExecutorInternal.lua"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Anti cheat finder",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Roblox-Anticheat-finder-30874"))()
			a = a + 1
   end,
})

local Button = Tab:CreateButton({
   Name = "Aim-ware (aimbots)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/someoneus/master/refs/heads/main/aimwaresource.lua"))()
			a = a + 1
   end,
})

local Tab = Window:CreateTab("Built-in", "github")







if a then
Rayfield:Notify({
   Title = "Script Checker",
   Content = "Tab Hub Currently has "a" scripts available free!",
   Duration = 6.5,
   Image = "scroll",
})
end
