--[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠾⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀	⠀⢸⡿⠻⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠞⠋⠀⢠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀	 ⠈⢿⡄⠀⠉⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣴⠟⠁⣴⠟⢠⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠈⣿⠀⢾⣆⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⡾⠃⢠⣾⡏⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⢹⡇⠀⢿⣧⡀⠘⢷⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣾⠁⢠⣿⣿⠁⠀⢸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠸⡇⠀⢸⣿⣷⡀⠘⣷⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣾⠃⢀⣿⣿⣿⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ⢠⡇⠀⢸⣿⣿⣧⠀⠸⣧⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣰⡏⠀⣼⣿⣿⣿⠀⠀⢸⡇⠀⠀⠀⠀⠀⣀⣤⣴⠶⠛⠛⠛⠛⠙⠛⠛⠛⠛⠶⢦⣤⣀⠀⠀⠀⠀⠀ ⣸⠇⠀⣸⣿⣿⣿⡇⠀⢿⡆⠀⠀⠀⠀
⠀⠀⠀⠀⣿⠃⠀⣿⣿⣿⣿⣧⠀⠀⢻⡄⢀⣤⠶⠛⢉⣀⣤⣴⣶⣶⣶⣶⣶⣶⣶⣶⣶⣤⣄⣀⠉⠛⠶⣤⡀⢠⡟⠀⢀⣿⣿⣿⣿⣷⠀⢸⡇⠀⠀
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
			cool looking guy i found on the internet


            credit to rayfield for library]]

print("rrrrr   aaaaa   ttttt")
print("r   r   a   a     t")
print("rrrrr   aaaaa     t")
print("r    r  a   a     t")
print("r    r  a   a     t")
print("")
warn("w     w     w   aaaaa   rrrrr   eeeee")
warn("w     w     w   a   a   r   r   e")
warn(" w   w w   w    aaaaa   rrrrr   eeeee")
warn("  w w   w w     a   a   r    r  e")
warn("   w     w      a   a   r    r  eeeee")



task.spawn(function() -- Enclosing in a function block
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "This might take a while.",
            Text = "rAt-WarE is loading, we will notify you back!",
            Duration = 5, -- Time in seconds
        })

end) -- Closing function block



local a
a = 0
local plr = game:GetService("Players")
local locplr = plr.LocalPlayer.Name
local seltitle
seltitle = "rAt-WarE"

if locplr == "oeind36" then
	seltitle = "aRdl b0t"
end

if locplr == "devilshmd" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/someoneus/master/refs/heads/main/keyboardmouse.lua", true))()
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = seltitle,
   Icon = "rat", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "rAt-WarE",
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


   KeySystem = KeySystem, -- Set this to true to use our key system
   KeySettings = {
      Title = "hi",
      Subtitle = "hi",
      Note = "hi", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"hi"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }

})

local Tab = Window:CreateTab("Scripts", "scroll-text")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Section = Tab:CreateSection("Section 1")





a = a + 1
local Button = Tab:CreateButton({
   Name = "Pet Simulator 99 - Redz Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://raw.githubusercontent.com/pablopoep/PetSimulator99/main/redz9999.lua"))()
   end,
})


a = a + 1
local Button = Tab:CreateButton({
   Name = "Blox Fruit - Redz Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "Dead Rails - Lunor",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Just3itx/Lunor-Loadstrings/refs/heads/main/Loader'))()
   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Fisch - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Blox Fruit - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Doors - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Doors.lua"))()

   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "Dead Rails - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()

   end,
})

a = a + 1
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

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Blue Lock: RIVALS",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BLRTBDMOBILEKEYSYS",true))()

   end,
})

local Section = Tab:CreateSection("Section 2")

a = a + 1
local Button = Tab:CreateButton({
   Name = "Meme Sea - Redz Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/MemeSea/refs/heads/main/Source.lua"))()
   end,
})





a = a + 1
local Button = Tab:CreateButton({
   Name = "PLS Donate",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Ahmadv999/PleaseDondate/refs/heads/main/PleaseDonateScript'))()

   end,
})


a = a + 1
local Button = Tab:CreateButton({
   Name = "Gym League - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Gym%20League.lua"))()

   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "Jujutsu Infinite - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/refs/heads/main/Jujutsu%20Infinite.lua"))()

   end,
})


a = a + 1
local Button = Tab:CreateButton({
   Name = "Brookhaven FE Play sounds (cannot play sounds more than 2s)",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/ameicaa0/brookhaven/refs/heads/main/brookhaven%20script.txt"))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Evade - VHNS",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/fratelevostru9999/src/refs/heads/main/evade%20vhns",true))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Brookhaven Admin",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://apocscripts.com/ApocHub.txt"))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Natural Disaster - Super ring",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://rawscripts.net/raw/Natural-Disaster-Survival-Super-ring-V4-24296"))()

   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "Prison Life - WhiteLkidd",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealNihilize/WhiteLkidd-hub/refs/heads/main/Prison%20life%20Hub"))()

   end,
})


local Section = Tab:CreateSection("Section 3")




a = a + 1
local Button = Tab:CreateButton({
   Name = "Legend of Speed",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://rawscripts.net/raw/Legends-Of-Speed-Simple-Legend-Auto-Farm-28647"))()
   end,
})



a = a + 1
local Button = Tab:CreateButton({
   Name = "Muscle Legends - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Muscle Legends - Vamp",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/QRTUI10/Vamp/refs/heads/main/Free%20Version"))()

   end,
})
a = a + 1
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

   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "be dead forever simulator",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- scirpt is made by invertedTh and is also the first best sicrpt for bdsf enjoy it while it lasted and also give feedback if something is broken
loadstring(game:HttpGet("https://raw.githubusercontent.com/invertedth/kewlzhubbdfs/refs/heads/main/Bdsf.lua"))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Brookhaven - Chaos Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://pastebin.com/raw/m0zjJLTv"))()
   end,
})




local Tab = Window:CreateTab("Key-Scripts", "key-round")

local Section = Tab:CreateSection("Section 1")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Murder Mystery 2 - AtherHub",
   Callback = function()
   -- The function that takes place when the button is pressed
			--DISCORD please join: https://discord.gg/ather
script_key = "Add key here to auto verify"
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Pet Simulator 99 - ZapHub",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet('https://zaphub.xyz/Exec'))()

-- Discord Server:
-- https://discord.gg/zaphub
   end,
})


local Section = Tab:CreateSection("Section 2")
a = a + 1
local Button = Tab:CreateButton({
   Name = "AI ChatBot",
   Callback = function()
   -- The function that takes place when the button is pressed
			--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://github.com/Synergy-Networks/products/raw/main/BetterBypasser/loader.lua"))()
   end,
})
local Section = Tab:CreateSection("Section 3")

a = a + 1
local Button = Tab:CreateButton({
   Name = "Build a Boat - NovBoat",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/novakoolhub/Scripts/main/Scripts/NovBoatR1"))()

   end,
})

local Tab = Window:CreateTab("Hub's", "shell")

local Section = Tab:CreateSection("Section 1")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Troll Animation",
   Callback = function()
   -- The function that takes place when the button is pressed    
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ShutUpJamesTheLoser/freaky/refs/heads/main/fe", true))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "FE R6 Anims",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/redxs-dosx/R6-Anim-Hub/refs/heads/main/Hub%20Script%20(.lua)'))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "FE R6 Animation",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitFin/AquaMatrix/refs/heads/AquaMatrix/AquaMatrix"))()

   end,
})


local Section = Tab:CreateSection("Section 2")
a = a + 1
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

end,
})

local Section = Tab:CreateSection("Section 3")


local Tab = Window:CreateTab("Other", "computer")



local Section = Tab:CreateSection("Section 1")

a = a + 1
local Button = Tab:CreateButton({
   Name = "Fake Verified",
   Callback = function()
   -- The function that takes place when the button is pressed
	loadstring(game:HttpGet("https://pastebin.com/raw/qJwH9964"))();
   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "Cart game ruiner 1.0",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://raw.githubusercontent.com/someoneus/master/refs/heads/main/cartruiner.lua"))()
   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "LALOL Backdoor",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Micro Backdoor",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://paste.ee/r/GipgWZb8"))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "SolSpy (for executor than doesn't support RemoteSpy)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://gist.githubusercontent.com/Uylost/960b592d7fc7161c3e6de0047547d874/raw/cc0e9ca436afe2c3e253fdb357d1a61efd576098/gistfile1.txt"))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "More UNC (for low power executor)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-MoreUNC-13110"))()

   end,
})

local Section = Tab:CreateSection("Section 2")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Console2",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://raw.githubusercontent.com/someoneus/master/refs/heads/main/console2.lua"))()
   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Black hole",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://pastebin.com/raw/tstrtDFD"))()

   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "Annabypasser (check console)",
   Callback = function()
   -- The function that takes place when the button is pressed
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
warn("annabypasser : set your languange to Қазақ Тілі*") 

loadstring(game:HttpGet("https://raw.githubusercontent.com/AnnaRoblox/AnnaBypasser/refs/heads/main/AnnaBypasser.lua",true))()

   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "Super Ring",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/chesslovers69/Super-ring-parts-v6/refs/heads/main/Bylukaslol"))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Internal executor - RoExec (has key)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://gist.githubusercontent.com/Axchs/af0848c3885194d54f2c181562675126/raw/96862bc46256bcadde0df0cd799cc7a998bcad82/gistfile1.txt"))()

   end,
})

local Button = Tab:CreateButton({
   Name = "Server Finder",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RealBatu20/AI-Scripts-2025/refs/heads/main/LowServerFinderGUI.lua", true))()

   end,
})

a = a + 1
local Button = Tab:CreateButton({
   Name = "KeyboardClick",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/someoneus/master/refs/heads/main/keyboardmouse.lua", true))()

   end,
})

local Section = Tab:CreateSection("Section 3")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Internal executor - UI (pc only)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Other-Stuff/main/ExecutorInternal.lua"))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Anti cheat finder",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Roblox-Anticheat-finder-30874"))()

   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Aim-ware (aimbots)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/someoneus/master/refs/heads/main/aimwaresource.lua"))()

   end,
})

local Tab = Window:CreateTab("Built-in", "github")

local Button = Tab:CreateButton({
   Name = "Steal Tools (Risk and Client)",
   Callback = function()
   -- The function that takes place when the button is pressed
local player = game:GetService("Players").LocalPlayer
local backpack = player:FindFirstChild("Backpack")

local foundTool = false -- Flag to check if tools exist

for _, tool in pairs(game:GetDescendants()) do
    if tool:IsA("Tool") then
        foundTool = true -- Mark that at least one tool was found
        local clonedTool = tool:Clone()

        -- Clone all child scripts inside the tool
        for _, child in pairs(tool:GetDescendants()) do
            if child:IsA("Script") or child:IsA("LocalScript") or child:IsA("ModuleScript") then
                local clonedScript = child:Clone()
                clonedScript.Parent = clonedTool -- Keep the script inside the cloned tool
            end
        end

        clonedTool.Parent = backpack
    end
end

if foundTool then
local player = game:GetService("Players").LocalPlayer
local backpack = player:FindFirstChild("Backpack")

for _, tool in pairs(backpack:GetChildren()) do
    if tool:IsA("Tool") then
        for _, child in pairs(tool:GetDescendants()) do
            if child:IsA("LocalScript") then
                local parentTool = child.Parent
                local clonedScript = child:Clone() -- Clone the script
                child:Destroy() -- Remove the original script
                clonedScript.Parent = parentTool -- Re-add the script (forcing a restart)
            end
        end
    end
end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Tools Stolen",
    Text = "Tools could be broken due to server-sided scripts.",
    Duration = 5
})
end


-- Send notification if no tools were found
if not foundTool then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "No Tools Found",
        Text = "No tools were detected in the game.",
        Duration = 5
    })
end



   end,
})

local Button = Tab:CreateButton({
   Name = "Force part ownerships (need a weak security)",
   Callback = function()
   -- The function that takes place when the button is pressed
			for _, part in pairs(workspace:GetDescendants()) do
    if part:IsA("BasePart") and part.CanCollide then
					warn(part)
        sethiddenproperty(part, "NetworkOwnershipRule", Enum.NetworkOwnership.Manual)
        part:SetNetworkOwner(game.Players.LocalPlayer)
    end
end

   end,
})


        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loaded!",
            Text = "rAt-WarE is loaded",
            Duration = 1, -- Time in seconds
        })


task.spawn(function() wait(2.5)
print(a.." scripts are available")
if a then
    Rayfield:Notify({
    Title = "Script Master",
    Content = "rAt-WarE Currently has "..a.." scripts available for free!",
    Duration = 10,
    Image = "scroll",
})

end
end)
