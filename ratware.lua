

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
local b
b = 0
local plr = game:GetService("Players")
local locplr = plr.LocalPlayer.Name



local executorName = "Unknown"

if identifyexecutor then
    executorName = identifyexecutor()
elseif syn then
    executorName = "Synapse X"
elseif KRNL_LOADED then
    executorName = "KRNL"
elseif fluxus then
    executorName = "Fluxus"
elseif secure_load then
    executorName = "Script-Ware"
elseif isexecutorclosure then
    executorName = "Hydrogen"
elseif getexecutorname then
    executorName = getexecutorname()
elseif Arceus then
    executorName = "Arceus X"
elseif is_sirhurt_closure then
    executorName = "SirHurt"
elseif hookfunction and not is_sirhurt_closure then
    executorName = "Probably Evon / Codex / Delta / Wave / Xeno"
elseif pebc_execute then
    executorName = "Delta"
elseif evon then
    executorName = "Evon"
elseif codex then
    executorName = "Codex"
elseif XENO_LOADED then
    executorName = "Xeno"
elseif wave then
    executorName = "Wave"
end



local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "rAt-WarE - "..executorName,
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
b = b + 1
local Section = Tab:CreateSection("Blox Fruit")
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
   Name = "Blox Fruit - SpeedHubX",
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
b = b + 1
local Section = Tab:CreateSection("Fisch")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Fisch - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()

   end,
})
b = b + 1
local Section = Tab:CreateSection("Brookhaven RP")
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
   Name = "Brookhaven - Chaos Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://pastebin.com/raw/m0zjJLTv"))()
   end,
})
a = a + 1
local Button = Tab:CreateButton({
   Name = "Brookhaven - Salvatore",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RFR-R1CH4RD/Loader/main/Salvatore.lua"))()
   end,
})
b = b + 1
local Section = Tab:CreateSection("Jujutsu Infinite")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Jujutsu Infinite - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/refs/heads/main/Jujutsu%20Infinite.lua"))()

   end,
})

b = b + 1
local Section = Tab:CreateSection("Dead Rails")
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
   Name = "Dead Rails - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()

   end,
})
b = b + 1
local Section = Tab:CreateSection("Muscle Legends")
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
b = b + 1
local Section = Tab:CreateSection("Pet Simulator 99")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Pet Simulator 99 - Redz Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://raw.githubusercontent.com/pablopoep/PetSimulator99/main/redz9999.lua"))()
   end,
})
b = b + 1
local Section = Tab:CreateSection("be dead forever simulator")
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
b = b + 1
local Section = Tab:CreateSection("Doors")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Doors - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Doors.lua"))()

   end,
})
b = b + 1
local Section = Tab:CreateSection("Meme Sea")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Meme Sea - Redz Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/MemeSea/refs/heads/main/Source.lua"))()
   end,
})
b = b + 1
local Section = Tab:CreateSection("Blue Lock: RIVALS")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Blue Lock: RIVALS",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BLRTBDMOBILEKEYSYS",true))()

   end,
})
b = b + 1
local Section = Tab:CreateSection("Gym League")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Gym League - SpeedHubX",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Gym%20League.lua"))()

   end,
})
b = b + 1
local Section = Tab:CreateSection("SCP - 3008")
a = a + 1
local Button = Tab:CreateButton({
   Name = "SCP - 3008",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/CPP/refs/heads/main/Main.cpp"))()
   end,
})
b = b + 1
local Section = Tab:CreateSection("Legends of Speed")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Legend of Speed",
   Callback = function()
   -- The function that takes place when the button is pressed
			loadstring(game:HttpGet("https://rawscripts.net/raw/Legends-Of-Speed-Simple-Legend-Auto-Farm-28647"))()
   end,
})
b = b + 1
local Section = Tab:CreateSection("PLS Donate")
a = a + 1
local Button = Tab:CreateButton({
   Name = "PLS Donate",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Ahmadv999/PleaseDondate/refs/heads/main/PleaseDonateScript'))()

   end,
})
b = b + 1
local Section = Tab:CreateSection("Evade")
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
b = b + 1
local Section = Tab:CreateSection("Prison Life")
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
b = b + 1
local Section = Tab:CreateSection("Natural Disaster Survival")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Natural Disaster - Super ring v4",
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
   Name = "Natural Disaster - Super Ring v6",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/chesslovers69/Super-ring-parts-v6/refs/heads/main/Bylukaslol"))()

   end,
})
b = b + 1
local Section = Tab:CreateSection("The Strongest Battlegrounds")
a = a + 1
local Button = Tab:CreateButton({
   Name = "The Strongest Batllegrounds",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ATrainz/Phantasm/refs/heads/main/Phantasm.lua"))()
   end,
})
b = b + 1
local Section = Tab:CreateSection("Jujutsu Shenanigans")

a = a + 1
local Button = Tab:CreateButton({
   Name = "Jujutsu Shenanigans",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeconHub/main/BeeconHub"))()

   end,
})

b = b + 1
local Section = Tab:CreateSection("Ninja Legends")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Ninja legends - proxima",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()

   end,
})


b = b + 1
local Section = Tab:CreateSection("Slop game")
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
b = b + 1
local Section = Tab:CreateSection("Survive The Killer")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Survive the killer - chairware",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua"))()
   end,
})
b = b + 1
local Section = Tab:CreateSection("Bee swarm simulator")
a = a + 1
local Button = Tab:CreateButton({
   Name = "BSS",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Chris8889/atlasbss/main/script.lua"))()
   end,
})
b = b + 1
local Section = Tab:CreateSection("Jailbreak")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Jailbreak",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('http://scripts.projectauto.xyz/AutoRobV5'))()
   end,
})
b = b + 1
local Section = Tab:CreateSection("Blade ball")
a = a + 1
local Button = Tab:CreateButton({
   Name = "Blade ball - STAR X",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/CodeE4X-dev/StarX/refs/heads/main/Blade-Ball.lua", true))()
   end,
})

































local Tab = Window:CreateTab("Key-Scripts", "key-round")
b = b + 1
local Section = Tab:CreateSection("Murder Mystery 2")
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
b = b + 1
local Section = Tab:CreateSection("Pet Simulator 99")
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
b = b + 1
local Section = Tab:CreateSection("Build a Boat for Treasure")

a = a + 1
local Button = Tab:CreateButton({
   Name = "Build a Boat - NovBoat",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/novakoolhub/Scripts/main/Scripts/NovBoatR1"))()

   end,
})



local Section = Tab:CreateSection("Other")
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
a = a + 1
local Button = Tab:CreateButton({
   Name = "Internal executor - RoExex",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://gist.githubusercontent.com/Axchs/af0848c3885194d54f2c181562675126/raw/96862bc46256bcadde0df0cd799cc7a998bcad82/gistfile1.txt"))()

   end,
})

local Divider = Tab:CreateDivider()
local Section = Tab:CreateSection("This tab could or not be discontinued.")


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


local Tab = Window:CreateTab("Universal", "computer")



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
   Name = "frymygame.lua (loud and irreversible warning)",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet('https://raw.githubusercontent.com/someoneus/master/refs/heads/main/frymygame.lua'))()

   end,
})
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

local Toggle = Tab:CreateToggle({
    Name = "LoopFullBright",
    CurrentValue = false,
    Flag = "fb1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    local savebright = game.Lighting.Brightness
    local saveambient = game.Lighting.Ambient
    local saveshadow = game.Lighting.GlobalShadows
    local RunService = game:GetService("RunService")
    if Value then
        local RunService = game:GetService("RunService")
        RunService.RenderStepped:Connect(function(deltaTime)
        task.wait(deltaTime * 1.1)
        game.Lighting.Brightness = 1
        game.Ambient = Color3.fromRGB(255, 255, 255)
        game.Lighting.GlobalShadows = false
        end)
    else
        RunService = nil
    end
      
    if not Value then
        game.Lighting.Brightness = savebright
        game.Lighting.Ambient = saveambient
        game.Lighting.GlobalShadows = saveshadow
        end
    end,
 })


 local Toggle = Tab:CreateToggle({
    Name = "LoopNoFog",
    CurrentValue = false,
    Flag = "fog1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    local Fend = game.Lighting.FogEnd
    local Fstart = game.Lighting.FogStart
    if Value then
    local run = game:GetService("RunService")
    run.RenderStepped:Connect(function(deltaTime)
        task.wait(deltaTime * 1.1)
        game.Lighting.FogEnd = math.huge or 1e6 or 10000
        game.Lighting.FogStart = math.huge or 1e6 or 10000
    end)
else
    run = nil
end

if not Value then
    game.Lighting.FogEnd = Fend
    game.Lighting.FogStart = Fstart
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
    wait(10)
    print(b.." games are supported by rAt-WarE")
    Rayfield:Notify({
    Title = "Script Master",
    Content = "and "..b.." games are supported!",
    Duration = 10,
    Image = "scroll",
})

end
end)

local Input = Tab:CreateInput({
   Name = "",
   CurrentValue = "",
   PlaceholderText = "Search a game name and we will check if its supported in our hub!",
   RemoveTextAfterFocusLost = true,
   Flag = "check1",
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   local txt = string.lower(Text)
   if string.find("blue" or "lock" or "rivals", txt) then
   game:GetService("StarterGui"):SetCore("SendNotification", {
      Title = "Supported!",
      Text = "Blue Lock: RIVALS",
      Duration = 3, -- Time in seconds
   })
elseif string.find("dead" or "rails", txt) then
   game:GetService("StarterGui"):SetCore("SendNotification", {
      Title = "Supported!",
      Text = "Dead Rails",
      Duration = 3, -- Time in seconds
   })
   elseif string.find("blox" or "fruits" or "fruit", txt) then
      game:GetService("StarterGui"):SetCore("SendNotification", {
         Title = "Supported!",
         Text = "Blox Fruit",
         Duration = 3, -- Time in seconds
      })
      elseif string.find("brookhaven" or "rp", txt) then
         game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Supported!",
            Text = "Brookhaven RP",
            Duration = 3, -- Time in seconds
         })
         elseif string.find("bdfs" or "be" or "dead" or "forever" or "simulator", txt) then
            game:GetService("StarterGui"):SetCore("SendNotification", {
               Title = "Supported!",
               Text = "be dead forever simulator",
               Duration = 3, -- Time in seconds
            })
            elseif string.find("size" or "legend", txt) then
               game:GetService("StarterGui"):SetCore("SendNotification", {
                  Title = "Supported!",
                  Text = "Size Legend Simulator",
                  Duration = 3, -- Time in seconds
               })
               elseif string.find("muscle" or "legends", txt) then
                  game:GetService("StarterGui"):SetCore("SendNotification", {
                     Title = "Supported!",
                     Text = "Muscle Legends",
                     Duration = 3, -- Time in seconds
                  })
                  elseif string.find("survive" or "killer", txt) then
                     game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "Supported!",
                        Text = "Survive The Killer",
                        Duration = 3,
                     })
                     elseif string.find("booga", txt) then
                        game:GetService("StarterGui"):SetCore("SendNotification", {
                           Title = "Supported!",
                           Text = "Booga Booga",
                           Duration = 3, -- Time in seconds
                        })
                        elseif string.find("murder" or "mystery", txt) then
                           game:GetService("StarterGui"):SetCore("SendNotification", {
                              Title = "Supported!",
                              Text = "Murder Mystery 2",
                              Duration = 3, -- Time in seconds
                           })
                           elseif string.find("natural" or "disaster", txt) then
                              game:GetService("StarterGui"):SetCore("SendNotification", {
                                 Title = "Supported!",
                                 Text = "Natural Disaster",
                                 Duration = 3, -- Time in seconds
                              })
                              elseif string.find("legend" or "speed", txt) then
                                 game:GetService("StarterGui"):SetCore("SendNotification", {
                                    Title = "Supported!",
                                    Text = "Legends of speed",
                                    Duration = 3, -- Time in seconds
                                 })
                                 elseif string.find("pet" or "99", txt) then
                                    game:GetService("StarterGui"):SetCore("SendNotification", {
                                       Title = "Supported!",
                                       Text = "Pet Simulator 99",
                                       Duration = 3, -- Time in seconds
                                    })
                                    elseif string.find("prison" or "life", txt) then
                                       game:GetService("StarterGui"):SetCore("SendNotification", {
                                          Title = "Supported!",
                                          Text = "Prison Life",
                                          Duration = 3, -- Time in seconds
                                       })
                                       elseif string.find("build" or "boat" or "boats" or "treasure", txt) then
                                          game:GetService("StarterGui"):SetCore("SendNotification", {
                                             Title = "Supported!",
                                             Text = "Build a boat for Treasure",
                                             Duration = 3, -- Time in seconds
                                          })
                                          elseif string.find("ninja", txt) then
                                             game:GetService("StarterGui"):SetCore("SendNotification", {
                                                Title = "Supported!",
                                                Text = "Ninja Legends",
                                                Duration = 3, -- Time in seconds
                                             })
                                             elseif string.find("jujutsu" or "infinite", txt) then
                                                game:GetService("StarterGui"):SetCore("SendNotification", {
                                                   Title = "Supported!",
                                                   Text = "Jujutsu Infinite",
                                                   Duration = 3, -- Time in seconds
                                                })
                                                elseif string.find("gym" or "league", txt) then
                                                   game:GetService("StarterGui"):SetCore("SendNotification", {
                                                      Title = "Supported!",
                                                      Text = "GYM League",
                                                      Duration = 3, -- Time in seconds
                                                   })
                                                   elseif string.find("battleground" or "battlegrounds" or "strongest", txt) then
                                                      game:GetService("StarterGui"):SetCore("SendNotification", {
                                                         Title = "Supported!",
                                                         Text = "The Strongest Battlegrounds",
                                                         Duration = 3, -- Time in seconds
                                                      })
                                                      elseif string.find("jujutsu" or "shenanigans", txt) then
                                                         game:GetService("StarterGui"):SetCore("SendNotification", {
                                                            Title = "Supported!",
                                                            Text = "Jujutsu Shenanigans",
                                                            Duration = 3, -- Time in seconds
                                                         })
                                                         elseif string.find("doors" or "door", txt) then
                                                            game:GetService("StarterGui"):SetCore("SendNotification", {
                                                               Title = "Supported!",
                                                               Text = "Doors",
                                                               Duration = 3, -- Time in seconds
                                                            })
                                                            elseif string.find("scp" or "3008", txt) then
                                                               game:GetService("StarterGui"):SetCore("SendNotification", {
                                                                  Title = "Supported!",
                                                                  Text = "3008",
                                                                  Duration = 3, -- Time in seconds
                                                               })
                                                               elseif string.find("pls" or "donate", txt) then
                                                                  game:GetService("StarterGui"):SetCore("SendNotification", {
                                                                     Title = "Supported!",
                                                                     Text = "PLS Donate",
                                                                     Duration = 3, -- Time in seconds
                                                                  })
                                                                  elseif string.find("meme" or "sea", txt) then
                                                                     game:GetService("StarterGui"):SetCore("SendNotification", {
                                                                        Title = "Supported!",
                                                                        Text = "Meme Sea",
                                                                        Duration = 3, -- Time in seconds
                                                                     })
                                                                     elseif string.find("evade", txt) then
                                                                        game:GetService("StarterGui"):SetCore("SendNotification", {
                                                                           Title = "Supported!",
                                                                           Text = "Evade",
                                                                           Duration = 3, -- Time in seconds
                                                                        })
                                                                        elseif string.find("fisch", txt) then
                                                                           game:GetService("StarterGui"):SetCore("SendNotification", {
                                                                              Title = "Supported!",
                                                                              Text = "Fisch",
                                                                              Duration = 3, -- Time in seconds
                                                                           })
                                                                           elseif string.find("bee" or "swarm", txt) then
                                                                              game:GetService("StarterGui"):SetCore("SendNotification", {
                                                                                 Title = "Supported!",
                                                                                 Text = "Bee Swarm Simulator",
                                                                                 Duration = 3, -- Time in seconds
                                                                              })
				                                                                           elseif string.find("jailbreak", txt) then
                                                                              game:GetService("StarterGui"):SetCore("SendNotification", {
                                                                                 Title = "Supported!",
                                                                                 Text = "Jailbreak",
                                                                                 Duration = 3, -- Time in seconds
                                                                              })
				                                                                           elseif string.find("blade" or "ball", txt) then
                                                                              game:GetService("StarterGui"):SetCore("SendNotification", {
                                                                                 Title = "Supported!",
                                                                                 Text = "Blade Ball",
                                                                                 Duration = 3, -- Time in seconds
                                                                              })
                                                                     else
                                                                        game:GetService("StarterGui"):SetCore("SendNotification", {
                                                                           Title = "Unsupported!",
                                                                           Text = "your input ["..txt.."] :(",
                                                                           Duration = 3, -- Time in seconds
                                                                        })
                                                                     end
                                                                     
                                                         
                                                      
                                                   
                                          
                                       
                                    
                                 
                           
                        
                     
   
   end,
})
