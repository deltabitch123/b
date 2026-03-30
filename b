 
local l1l1Il1l1I11 = game:GetService("Players")
local l1lI1lIIIl1l = game:GetService("TweenService")
local IllIII1llIlI = game:GetService("UserInputService")
local II1Il111I1lI = game:GetService("CoreGui")
local I1ll11llIlII = game:GetService("RunService")
local II1II11IlI1l = game:GetService("HttpService")
local II1llll1I1I1 = game:GetService("ReplicatedStorage")
local I11I11I1l1ll = game:GetService("Workspace")
local IIllI1Il111l = game:GetService("VirtualUser")

local lI1IIII1IIll = (syn and syn["\x72\x65\x71\x75\x65\x73\x74"]) or (http and http["\x72\x65\x71\x75\x65\x73\x74"]) or http_request or (fluxus and fluxus["\x72\x65\x71\x75\x65\x73\x74"]) or lI1IIII1IIll

local Il1IllIl1Ill = l1l1Il1l1I11["\x4c\x6f\x63\x61\x6c\x50\x6c\x61\x79\x65\x72"]
while not Il1IllIl1Ill do task["\x77\x61\x69\x74"](); Il1IllIl1Ill = l1l1Il1l1I11["\x4c\x6f\x63\x61\x6c\x50\x6c\x61\x79\x65\x72"] end

Il1IllIl1Ill["\x49\x64\x6c\x65\x64"]:Connect(function()
    IIllI1Il111l:CaptureController()
    IIllI1Il111l:ClickButton2(Vector2["\x6e\x65\x77"]())
end)

local function ServerHop()
    task["\x73\x70\x61\x77\x6e"](function()
        math["\x72\x61\x6e\x64\x6f\x6d\x73\x65\x65\x64"](tick())
        
        local lll11IlIll1l
        local llI1Il1l11lI = 0
        
         
        while not lll11IlIll1l and llI1Il1l11lI < 2 do
            local lIl1IIlI1IIl = "https://games.roblox.com/v1/games/" .. game["\x50\x6c\x61\x63\x65\x49\x64"] .. "/servers/Public?sortOrder=Asc&limit=100"
            if llI1Il1l11lI == 1 then
                lIl1IIlI1IIl = "https://games.roproxy.com/v1/games/" .. game["\x50\x6c\x61\x63\x65\x49\x64"] .. "/servers/Public?sortOrder=Asc&limit=100"  
            end
            
            local IlII1IlIllll, llI11Il1l1I1
            if lI1IIII1IIll then
                IlII1IlIllll, llI11Il1l1I1 = pcall(lI1IIII1IIll, {["\x55\x72\x6c"] = lIl1IIlI1IIl, ["\x4d\x65\x74\x68\x6f\x64"] = "GET"})
            elseif game["\x48\x74\x74\x70\x47\x65\x74"] then
                IlII1IlIllll, llI11Il1l1I1 = pcall(game["\x48\x74\x74\x70\x47\x65\x74"], game, lIl1IIlI1IIl, true)
            else
                break  
            end
            
            if IlII1IlIllll and llI11Il1l1I1 then
                local I11IIIIlI1ll = (type(llI11Il1l1I1) == "table") and llI11Il1l1I1["\x42\x6f\x64\x79"] or llI11Il1l1I1
                if I11IIIIlI1ll and type(I11IIIIlI1ll) == "string" then
                    local IIIIllI1ll1l, IlIl1l1I1Il1 = pcall(II1II11IlI1l["\x4a\x53\x4f\x4e\x44\x65\x63\x6f\x64\x65"], II1II11IlI1l, I11IIIIlI1ll)
                    if IIIIllI1ll1l and IlIl1l1I1Il1 and IlIl1l1I1Il1["\x64\x61\x74\x61"] then
                        lll11IlIll1l = IlIl1l1I1Il1["\x64\x61\x74\x61"]
                    end
                end
            end
            llI1Il1l11lI = llI1Il1l11lI + 1
            if not lll11IlIll1l then task["\x77\x61\x69\x74"](0.5) end
        end
        
        if lll11IlIll1l and #lll11IlIll1l > 0 then
            local lI1I11l1I1I1 = {}
            for _, server in ipairs(lll11IlIll1l) do
                if type(server) == "table" and server["\x69\x64"] ~= game["\x4a\x6f\x62\x49\x64"] and server["\x70\x6c\x61\x79\x69\x6e\x67"] < server["\x6d\x61\x78\x50\x6c\x61\x79\x65\x72\x73"] then
                    table["\x69\x6e\x73\x65\x72\x74"](lI1I11l1I1I1, server)
                end
            end
            
            if #lI1I11l1I1I1 > 0 then
                 
                for i = #lI1I11l1I1I1, 2, -1 do
                    local IllIlIIll1Il = math["\x72\x61\x6e\x64\x6f\x6d"](1, i)
                    lI1I11l1I1I1[i], lI1I11l1I1I1[IllIlIIll1Il] = lI1I11l1I1I1[IllIlIIll1Il], lI1I11l1I1I1[i]
                end
                
                 
                pcall(function()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game["\x50\x6c\x61\x63\x65\x49\x64"], lI1I11l1I1I1[1]["\x69\x64"], Il1IllIl1Ill)
                end)
                task["\x77\x61\x69\x74"](3)  
                return  
            end
        end
        
        print("[JOMHUB] Server Hop failed: Could not retrieve a valid server list.")
    end)
end

_G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] = _G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] or 0

if readfile and isfile and isfile("JomHUB_Configs/JomHubMobile_Pity.txt") then
    local lIIIlIlI111l = tonumber(readfile("JomHUB_Configs/JomHubMobile_Pity.txt"))
    if lIIIlIlI111l then _G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] = lIIIlIlI111l end
end

local II111I1I11Il = nil

local function updatePity(val)
    _G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] = val
    if II111I1I11Il then II111I1I11Il["\x54\x65\x78\x74"] = "Current Pity: " .. _G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] .. "/25" end
    if writefile then if not isfolder("JomHUB_Configs") then pcall(makefolder, "JomHUB_Configs") end; pcall(function() writefile("JomHUB_Configs/JomHubMobile_Pity.txt", tostring(val)) end) end
end

 
local l11ll11l1I1l = {
    ["\x41\x75\x74\x6f\x4c\x65\x76\x65\x6c\x41\x63\x74\x69\x76\x65"] = false,
    ["\x41\x75\x74\x6f\x46\x61\x72\x6d\x41\x63\x74\x69\x76\x65"] = false,
    ["\x73\x65\x6c\x65\x63\x74\x65\x64\x4d\x6f\x62"] = "None",
    ["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] = "",
    ["\x41\x75\x74\x6f\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] = false,
    ["\x41\x75\x74\x6f\x41\x6c\x6c\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] = false,
    ["\x61\x75\x74\x6f\x48\x6f\x70\x41\x6c\x6c\x42\x6f\x73\x73\x65\x73"] = false,
    ["\x73\x65\x6c\x65\x63\x74\x65\x64\x42\x6f\x73\x73"] = "None",
    ["\x66\x61\x72\x6d\x50\x6f\x73"] = "Behind",
    ["\x66\x61\x72\x6d\x44\x69\x73\x74\x61\x6e\x63\x65"] = 10,
    ["\x61\x75\x74\x6f\x4d\x65\x6c\x65\x65"] = true,
    ["\x61\x75\x74\x6f\x53\x77\x6f\x72\x64"] = false,
    ["\x61\x75\x74\x6f\x46\x72\x75\x69\x74"] = false,
    ["\x61\x75\x74\x6f\x53\x6b\x69\x6c\x6c\x73"] = {},
    ["\x61\x75\x74\x6f\x4d\x65\x6c\x65\x65\x53\x6b\x69\x6c\x6c\x73"] = {},
    ["\x61\x75\x74\x6f\x53\x77\x6f\x72\x64\x53\x6b\x69\x6c\x6c\x73"] = {},
    ["\x61\x75\x74\x6f\x46\x72\x75\x69\x74\x53\x6b\x69\x6c\x6c\x73"] = {},
    ["\x6c\x61\x73\x74\x41\x75\x74\x6f\x51\x75\x65\x73\x74"] = "",
    ["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] = false,
    ["\x64\x75\x6e\x67\x65\x6f\x6e\x54\x79\x70\x65"] = "CidDungeon",
    ["\x64\x75\x6e\x67\x65\x6f\x6e\x44\x69\x66\x66"] = "Easy",
    ["\x64\x75\x6e\x67\x65\x6f\x6e\x50\x6f\x73"] = "Behind",
    ["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] = false,
    ["\x69\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72\x50\x6f\x73"] = "Behind",
    ["\x61\x75\x74\x6f\x46\x61\x72\x6d\x54\x69\x74\x6c\x65"] = false,
    ["\x73\x65\x6c\x65\x63\x74\x65\x64\x54\x69\x74\x6c\x65"] = "None",
    ["\x68\x6f\x70\x46\x6f\x72\x54\x69\x74\x6c\x65"] = false,
    ["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e"] = false,
    ["\x73\x75\x6d\x6d\x6f\x6e\x54\x61\x72\x67\x65\x74\x73"] = {},
    ["\x73\x75\x6d\x6d\x6f\x6e\x44\x69\x66\x66"] = "Normal",
    ["\x61\x75\x74\x6f\x46\x61\x72\x6d\x49\x74\x65\x6d\x73"] = false,
    ["\x69\x74\x65\x6d\x46\x61\x72\x6d\x44\x75\x72\x61\x74\x69\x6f\x6e"] = 60,
    ["\x66\x61\x72\x6d\x43\x6f\x6d\x6d\x6f\x6e"] = {},
    ["\x66\x61\x72\x6d\x52\x61\x72\x65"] = {},
    ["\x66\x61\x72\x6d\x45\x70\x69\x63"] = {},
    ["\x66\x61\x72\x6d\x4c\x65\x67\x65\x6e\x64\x61\x72\x79"] = {},
    ["\x66\x61\x72\x6d\x4d\x79\x74\x68\x69\x63\x61\x6c"] = {},
    ["\x66\x61\x72\x6d\x53\x65\x63\x72\x65\x74"] = {},
    ["\x70\x69\x74\x79\x42\x75\x69\x6c\x64\x65\x72\x42\x6f\x73\x73\x65\x73"] = {},
    ["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"] = "None",
    ["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x44\x69\x66\x66"] = "Normal",
    ["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"] = false,
    ["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"] = false,
    ["\x61\x66\x6b\x4d\x6f\x64\x65\x41\x63\x74\x69\x76\x65"] = false,
    ["\x61\x66\x6b\x49\x73\x6c\x61\x6e\x64\x73"] = {}
}

local IIllIl1Il1l1 = {
    ["Starter"] = "StarterIsland", ["Jungle"] = "JungleIsland", ["Desert"] = "DesertIsland",
    ["Snow"] = "SnowIsland", ["Shibuya"] = "ShibuyaStation", ["HollowIsland"] = "HollowIsland",
    ["Shinjuku"] = "ShinjukuIsland", ["Slime"] = "SlimeIsland", ["Academy"] = "AcademyIsland",
    ["Judgement"] = "JudgementIsland", ["SoulDominion"] = "SoulDominionIsland", ["Ninja"] = "NinjaIsland",
    ["Lawless"] = "LawlessIsland", ["Boss"] = "BossIsland", ["Sailor"] = "SailorIsland", ["Valentine"] = "ValentineIsland"
}
    
local function mergeConfig(dst, src)
    for k, v in pairs(src) do
        if type(v) == "table" and type(dst[k]) == "table" then mergeConfig(dst[k], v) else dst[k] = v end
    end
end

if readfile and isfile and isfolder then
    if isfile("JomHUB_Configs/JomHubMobile_autoload.txt") then
        local lII11ll1IllI = readfile("JomHUB_Configs/JomHubMobile_autoload.txt")
        if isfile("JomHUB_Configs/"..lII11ll1IllI..".json") then
            local IlII1IlIllll, IlIl1l1I1Il1 = pcall(function() return II1II11IlI1l:JSONDecode(readfile("JomHUB_Configs/"..lII11ll1IllI..".json")) end)
            if IlII1IlIllll and type(IlIl1l1I1Il1) == "table" then mergeConfig(l11ll11l1I1l, IlIl1l1I1Il1) end
        end
    end
end

local l1I11IIIl11l = {}
local llI1ll1IIl1I = II1llll1I1I1:WaitForChild("Remotes", 5)
local lllIll1ll1ll = llI1ll1IIl1I and llI1ll1IIl1I:FindFirstChild("UpdateInventory")
local lII1Il1lllII = llI1ll1IIl1I and llI1ll1IIl1I:FindFirstChild("RequestInventory")

if lllIll1ll1ll then
    lllIll1ll1ll["\x4f\x6e\x43\x6c\x69\x65\x6e\x74\x45\x76\x65\x6e\x74"]:Connect(function(action, IlIl1l1I1Il1)
        if action == "Items" and type(IlIl1l1I1Il1) == "table" then
            local lI11I1l1I1lI = {}
            for _, item in ipairs(IlIl1l1I1Il1) do
                if type(item) == "table" and item["\x6e\x61\x6d\x65"] then
                    lI11I1l1I1lI[item["\x6e\x61\x6d\x65"]] = item["\x71\x75\x61\x6e\x74\x69\x74\x79"] or 1
                end
            end
            l1I11IIIl11l = lI11I1l1I1lI
        end
    end)
end

task["\x73\x70\x61\x77\x6e"](function()
    while task["\x77\x61\x69\x74"](10) do
        if lII1Il1lllII then pcall(function() lII1Il1lllII:FireServer() end) end
    end
end)

local function getUiParent()
    local IlII1IlIllll, lll1ll1I11II = pcall(function() return gethui() end)
    if not IlII1IlIllll or not lll1ll1I11II then IlII1IlIllll, lll1ll1I11II = pcall(function() return II1Il111I1lI end) end
    if not IlII1IlIllll or not lll1ll1I11II then lll1ll1I11II = l1l1Il1l1I11["\x4c\x6f\x63\x61\x6c\x50\x6c\x61\x79\x65\x72"]:WaitForChild("PlayerGui") end
    return lll1ll1I11II
end

local IlI1lII11lIl = getUiParent()
if IlI1lII11lIl:FindFirstChild("JomHubMobile") then
    IlI1lII11lIl["\x4a\x6f\x6d\x48\x75\x62\x4d\x6f\x62\x69\x6c\x65"]:Destroy()
end

local l1l1Il111lIl = Instance["\x6e\x65\x77"]("ScreenGui")
l1l1Il111lIl["\x4e\x61\x6d\x65"] = "JomHubMobile"
l1l1Il111lIl["\x52\x65\x73\x65\x74\x4f\x6e\x53\x70\x61\x77\x6e"] = false
l1l1Il111lIl["\x5a\x49\x6e\x64\x65\x78\x42\x65\x68\x61\x76\x69\x6f\x72"] = Enum["\x5a\x49\x6e\x64\x65\x78\x42\x65\x68\x61\x76\x69\x6f\x72"]["\x47\x6c\x6f\x62\x61\x6c"]
l1l1Il111lIl["\x50\x61\x72\x65\x6e\x74"] = IlI1lII11lIl

 
local IIIlIl1ll1ll = {
    ["\x42\x47"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](5, 8, 14),
    ["\x54\x6f\x70\x42\x61\x72"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](10, 15, 24),
    ["\x54\x61\x62\x42\x47"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](8, 12, 18),
    ["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](15, 20, 30),
    ["\x45\x6c\x65\x6d\x65\x6e\x74\x48\x6f\x76\x65\x72"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](25, 35, 50),
    ["\x41\x63\x63\x65\x6e\x74"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](45, 120, 255),
    ["\x54\x65\x78\x74"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](220, 230, 255),
    ["\x4d\x75\x74\x65\x64"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](100, 120, 150)
}

local function round(lll1ll1I11II, radius)
    local llIll11ll11I = Instance["\x6e\x65\x77"]("UICorner")
    llIll11ll11I["\x43\x6f\x72\x6e\x65\x72\x52\x61\x64\x69\x75\x73"] = UDim["\x6e\x65\x77"](0, radius)
    llIll11ll11I["\x50\x61\x72\x65\x6e\x74"] = lll1ll1I11II
end

local function createLabel(lll1ll1I11II, text, align, font, size, color)
    local I1I1I1l1l11I = Instance["\x6e\x65\x77"]("TextLabel")
    I1I1I1l1l11I["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1
    I1I1I1l1l11I["\x54\x65\x78\x74"] = text
    I1I1I1l1l11I["\x46\x6f\x6e\x74"] = font
    I1I1I1l1l11I["\x54\x65\x78\x74\x53\x69\x7a\x65"] = size
    I1I1I1l1l11I["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = color
    I1I1I1l1l11I["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"] = align
    I1I1I1l1l11I["\x50\x61\x72\x65\x6e\x74"] = lll1ll1I11II
    return I1I1I1l1l11I
end

 
local l1I1l1Il1II1 = Instance["\x6e\x65\x77"]("TextButton")
l1I1l1Il1II1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 50, 0, 50)
l1I1l1Il1II1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](1, -65, 0.15, 0)
l1I1l1Il1II1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x6f\x70\x42\x61\x72"]
l1I1l1Il1II1["\x54\x65\x78\x74"] = "JOM"
l1I1l1Il1II1["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
l1I1l1Il1II1["\x46\x6f\x6e\x74"] = Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d\x42\x6f\x6c\x64"]
l1I1l1Il1II1["\x54\x65\x78\x74\x53\x69\x7a\x65"] = 14
l1I1l1Il1II1["\x42\x6f\x72\x64\x65\x72\x53\x69\x7a\x65\x50\x69\x78\x65\x6c"] = 0
l1I1l1Il1II1["\x56\x69\x73\x69\x62\x6c\x65"] = false
l1I1l1Il1II1["\x50\x61\x72\x65\x6e\x74"] = l1l1Il111lIl
local I1Il11I1l1Il = Instance["\x6e\x65\x77"]("UIStroke")
I1Il11I1l1Il["\x43\x6f\x6c\x6f\x72"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
I1Il11I1l1Il["\x54\x68\x69\x63\x6b\x6e\x65\x73\x73"] = 2
I1Il11I1l1Il["\x50\x61\x72\x65\x6e\x74"] = l1I1l1Il1II1

 
local llI1lIIlI11l, I1lI1l1Il1Il, lIIllI1l1I1I
l1I1l1Il1II1["\x49\x6e\x70\x75\x74\x42\x65\x67\x61\x6e"]:Connect(function(input)
    if input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x4d\x6f\x75\x73\x65\x42\x75\x74\x74\x6f\x6e\x31"] or input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x54\x6f\x75\x63\x68"] then
        llI1lIIlI11l = true; I1lI1l1Il1Il = input["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]; lIIllI1l1I1I = l1I1l1Il1II1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]
    end
end)
IllIII1llIlI["\x49\x6e\x70\x75\x74\x43\x68\x61\x6e\x67\x65\x64"]:Connect(function(input)
    if llI1lIIlI11l and (input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x4d\x6f\x75\x73\x65\x4d\x6f\x76\x65\x6d\x65\x6e\x74"] or input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x54\x6f\x75\x63\x68"]) then
        local ll1llIlIlIII = input["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - I1lI1l1Il1Il
        l1I1l1Il1II1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](lIIllI1l1I1I["\x58"]["\x53\x63\x61\x6c\x65"], lIIllI1l1I1I["\x58"]["\x4f\x66\x66\x73\x65\x74"] + ll1llIlIlIII["\x58"], lIIllI1l1I1I["\x59"]["\x53\x63\x61\x6c\x65"], lIIllI1l1I1I["\x59"]["\x4f\x66\x66\x73\x65\x74"] + ll1llIlIlIII["\x59"])
    end
end)
IllIII1llIlI["\x49\x6e\x70\x75\x74\x45\x6e\x64\x65\x64"]:Connect(function(input)
    if input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x4d\x6f\x75\x73\x65\x42\x75\x74\x74\x6f\x6e\x31"] or input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x54\x6f\x75\x63\x68"] then llI1lIIlI11l = false end
end)

local I11I11IlIII1 = Instance["\x6e\x65\x77"]("Frame")
local lllI11lI1IlI = workspace["\x43\x75\x72\x72\x65\x6e\x74\x43\x61\x6d\x65\x72\x61"]
local Il1l1IIlIll1 = lllI11lI1IlI and lllI11lI1IlI["\x56\x69\x65\x77\x70\x6f\x72\x74\x53\x69\x7a\x65"] or Vector2["\x6e\x65\x77"](800, 600)
local IIl111Il1II1 = math["\x6d\x69\x6e"](math["\x6d\x61\x78"](Il1l1IIlIll1["\x58"] * 0.75, 300), 560)
local lI11Ill1l1ll = math["\x6d\x69\x6e"](math["\x6d\x61\x78"](Il1l1IIlIll1["\x59"] * 0.65, 280), 420)
I11I11IlIII1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, IIl111Il1II1, 0, lI11Ill1l1ll)
I11I11IlIII1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0.5, 0, 0.5, 0)
I11I11IlIII1["\x41\x6e\x63\x68\x6f\x72\x50\x6f\x69\x6e\x74"] = Vector2["\x6e\x65\x77"](0.5, 0.5)
I11I11IlIII1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x42\x47"]
I11I11IlIII1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 0.15
I11I11IlIII1["\x56\x69\x73\x69\x62\x6c\x65"] = false
I11I11IlIII1["\x43\x6c\x69\x70\x73\x44\x65\x73\x63\x65\x6e\x64\x61\x6e\x74\x73"] = true
I11I11IlIII1["\x50\x61\x72\x65\x6e\x74"] = l1l1Il111lIl

local II1Il11111Il = Instance["\x6e\x65\x77"]("UIStroke")
II1Il11111Il["\x54\x68\x69\x63\x6b\x6e\x65\x73\x73"] = 2
II1Il11111Il["\x41\x70\x70\x6c\x79\x53\x74\x72\x6f\x6b\x65\x4d\x6f\x64\x65"] = Enum["\x41\x70\x70\x6c\x79\x53\x74\x72\x6f\x6b\x65\x4d\x6f\x64\x65"]["\x42\x6f\x72\x64\x65\x72"]
II1Il11111Il["\x50\x61\x72\x65\x6e\x74"] = I11I11IlIII1

 
local II1IlIIllIII = Instance["\x6e\x65\x77"]("UISizeConstraint")
II1IlIIllIII["\x4d\x69\x6e\x53\x69\x7a\x65"] = Vector2["\x6e\x65\x77"](280, 260)
II1IlIIllIII["\x4d\x61\x78\x53\x69\x7a\x65"] = Vector2["\x6e\x65\x77"](560, 420)
II1IlIIllIII["\x50\x61\x72\x65\x6e\x74"] = I11I11IlIII1

local l11111I1lll1 = Instance["\x6e\x65\x77"]("Frame")
l11111I1lll1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 45)
l11111I1lll1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x6f\x70\x42\x61\x72"]
l11111I1lll1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 0.15
l11111I1lll1["\x50\x61\x72\x65\x6e\x74"] = I11I11IlIII1
local l1I1lllIlllI = createLabel(l11111I1lll1, " [ SYSTEM ] JOMHUB", Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x4c\x65\x66\x74"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d\x42\x6f\x6c\x64"], 14, IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"])
l1I1lllIlllI["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, -15, 1, 0)
l1I1lllIlllI["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 15, 0, 0)

_G["\x41\x63\x74\x69\x76\x65\x52\x47\x42\x54\x6f\x67\x67\x6c\x65\x73"] = {}

 
task["\x73\x70\x61\x77\x6e"](function()
    local I1l1IIIIIIII = 0
    while l1l1Il111lIl["\x50\x61\x72\x65\x6e\x74"] do
        I1l1IIIIIIII = I1l1IIIIIIII + 0.005
        if I1l1IIIIIIII > 1 then I1l1IIIIIIII = 0 end
        local Ill1l111II1l = Color3["\x66\x72\x6f\x6d\x48\x53\x56"](I1l1IIIIIIII, 1, 1)
        if II1Il11111Il["\x50\x61\x72\x65\x6e\x74"] then II1Il11111Il["\x43\x6f\x6c\x6f\x72"] = Ill1l111II1l end
        if I1Il11I1l1Il["\x50\x61\x72\x65\x6e\x74"] then I1Il11I1l1Il["\x43\x6f\x6c\x6f\x72"] = Ill1l111II1l end
        if l1I1lllIlllI["\x50\x61\x72\x65\x6e\x74"] then l1I1lllIlllI["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = Ill1l111II1l end
        for switchFrame, _ in pairs(_G["\x41\x63\x74\x69\x76\x65\x52\x47\x42\x54\x6f\x67\x67\x6c\x65\x73"]) do
            if switchFrame["\x50\x61\x72\x65\x6e\x74"] then switchFrame["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = Ill1l111II1l
            else _G["\x41\x63\x74\x69\x76\x65\x52\x47\x42\x54\x6f\x67\x67\x6c\x65\x73"][switchFrame] = nil end
        end
        task["\x77\x61\x69\x74"](0.03)
    end
end)

local l111l11I11I1 = Instance["\x6e\x65\x77"]("ScrollingFrame")
l111l11I11I1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 40)
l111l11I11I1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 0, 0, 45)
l111l11I11I1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x61\x62\x42\x47"]
l111l11I11I1["\x53\x63\x72\x6f\x6c\x6c\x42\x61\x72\x54\x68\x69\x63\x6b\x6e\x65\x73\x73"] = 0
l111l11I11I1["\x43\x61\x6e\x76\x61\x73\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 0, 0, 0)
l111l11I11I1["\x41\x75\x74\x6f\x6d\x61\x74\x69\x63\x43\x61\x6e\x76\x61\x73\x53\x69\x7a\x65"] = Enum["\x41\x75\x74\x6f\x6d\x61\x74\x69\x63\x53\x69\x7a\x65"]["\x58"]
l111l11I11I1["\x50\x61\x72\x65\x6e\x74"] = I11I11IlIII1

local l1llllIllIII = Instance["\x6e\x65\x77"]("UIListLayout")
l1llllIllIII["\x46\x69\x6c\x6c\x44\x69\x72\x65\x63\x74\x69\x6f\x6e"] = Enum["\x46\x69\x6c\x6c\x44\x69\x72\x65\x63\x74\x69\x6f\x6e"]["\x48\x6f\x72\x69\x7a\x6f\x6e\x74\x61\x6c"]
l1llllIllIII["\x53\x6f\x72\x74\x4f\x72\x64\x65\x72"] = Enum["\x53\x6f\x72\x74\x4f\x72\x64\x65\x72"]["\x4c\x61\x79\x6f\x75\x74\x4f\x72\x64\x65\x72"]
l1llllIllIII["\x50\x61\x64\x64\x69\x6e\x67"] = UDim["\x6e\x65\x77"](0, 5)
l1llllIllIII["\x50\x61\x72\x65\x6e\x74"] = l111l11I11I1

local lII1lIIIlIl1 = Instance["\x6e\x65\x77"]("UIPadding")
lII1lIIIlIl1["\x50\x61\x64\x64\x69\x6e\x67\x4c\x65\x66\x74"] = UDim["\x6e\x65\x77"](0, 10)
lII1lIIIlIl1["\x50\x61\x64\x64\x69\x6e\x67\x52\x69\x67\x68\x74"] = UDim["\x6e\x65\x77"](0, 10)
lII1lIIIlIl1["\x50\x61\x64\x64\x69\x6e\x67\x54\x6f\x70"] = UDim["\x6e\x65\x77"](0, 5)
lII1lIIIlIl1["\x50\x61\x64\x64\x69\x6e\x67\x42\x6f\x74\x74\x6f\x6d"] = UDim["\x6e\x65\x77"](0, 5)
lII1lIIIlIl1["\x50\x61\x72\x65\x6e\x74"] = l111l11I11I1

local II1I1l1IIIIl = Instance["\x6e\x65\x77"]("Frame")
II1I1l1IIIIl["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 1, -85)
II1I1l1IIIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 0, 0, 85)
II1I1l1IIIIl["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1
II1I1l1IIIIl["\x50\x61\x72\x65\x6e\x74"] = I11I11IlIII1

l1I1l1Il1II1["\x41\x63\x74\x69\x76\x61\x74\x65\x64"]:Connect(function()
    I11I11IlIII1["\x56\x69\x73\x69\x62\x6c\x65"] = not I11I11IlIII1["\x56\x69\x73\x69\x62\x6c\x65"]
    l1I1l1Il1II1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = I11I11IlIII1["\x56\x69\x73\x69\x62\x6c\x65"] and 0.5 or 0
end)

 
local Illl1IIlIIlI, lI1I11I1l11l, llIlI111l11I
l11111I1lll1["\x49\x6e\x70\x75\x74\x42\x65\x67\x61\x6e"]:Connect(function(input)
    if input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x4d\x6f\x75\x73\x65\x42\x75\x74\x74\x6f\x6e\x31"] or input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x54\x6f\x75\x63\x68"] then
        Illl1IIlIIlI = true; lI1I11I1l11l = input["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]; llIlI111l11I = I11I11IlIII1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]
    end
end)
IllIII1llIlI["\x49\x6e\x70\x75\x74\x43\x68\x61\x6e\x67\x65\x64"]:Connect(function(input)
    if Illl1IIlIIlI and (input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x4d\x6f\x75\x73\x65\x4d\x6f\x76\x65\x6d\x65\x6e\x74"] or input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x54\x6f\x75\x63\x68"]) then
        local ll1llIlIlIII = input["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - lI1I11I1l11l
        I11I11IlIII1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](llIlI111l11I["\x58"]["\x53\x63\x61\x6c\x65"], llIlI111l11I["\x58"]["\x4f\x66\x66\x73\x65\x74"] + ll1llIlIlIII["\x58"], llIlI111l11I["\x59"]["\x53\x63\x61\x6c\x65"], llIlI111l11I["\x59"]["\x4f\x66\x66\x73\x65\x74"] + ll1llIlIlIII["\x59"])
    end
end)
IllIII1llIlI["\x49\x6e\x70\x75\x74\x45\x6e\x64\x65\x64"]:Connect(function(input)
    if input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x4d\x6f\x75\x73\x65\x42\x75\x74\x74\x6f\x6e\x31"] or input["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x54\x6f\x75\x63\x68"] then Illl1IIlIIlI = false end
end)

I11I11IlIII1:GetPropertyChangedSignal("Position"):Connect(function()
    if _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] and _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"]["\x56\x69\x73\x69\x62\x6c\x65"] and _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x42\x75\x74\x74\x6f\x6e"] then
        local II1Illl11Il1 = _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x42\x75\x74\x74\x6f\x6e"]
        local Il1Ill1ll11l = _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"]
        local IllIIl111llI = Il1Ill1ll11l["\x53\x69\x7a\x65"]["\x59"]["\x4f\x66\x66\x73\x65\x74"]
        local ll1Il1lI1llI = II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x58"]
        local lI1Il1IlI11I = II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x59"] + II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x59"]
        if (II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x59"] + II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x59"] + IllIIl111llI) > l1l1Il111lIl["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x59"] then
            lI1Il1IlI11I = II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x59"] - IllIIl111llI
        end
        Il1Ill1ll11l["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, ll1Il1lI1llI, 0, lI1Il1IlI11I)
    end
end)

 
local lIIIlIlIIIll = {}
local IIll11IlIIl1 = {}
local lIl1l1I1lI1l = nil
local Il111I1lIIll = nil

function lIIIlIlIIIll:CreateTab(name)
    local II1Il1ll1lIl = Instance["\x6e\x65\x77"]("TextButton")
    II1Il1ll1lIl["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 100, 1, 0)
    II1Il1ll1lIl["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
    II1Il1ll1lIl["\x54\x65\x78\x74"] = name
    II1Il1ll1lIl["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x4d\x75\x74\x65\x64"]
    II1Il1ll1lIl["\x46\x6f\x6e\x74"] = Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d\x53\x65\x6d\x69\x62\x6f\x6c\x64"]
    II1Il1ll1lIl["\x54\x65\x78\x74\x53\x69\x7a\x65"] = 13
    II1Il1ll1lIl["\x41\x75\x74\x6f\x42\x75\x74\x74\x6f\x6e\x43\x6f\x6c\x6f\x72"] = false
    II1Il1ll1lIl["\x50\x61\x72\x65\x6e\x74"] = l111l11I11I1
    round(II1Il1ll1lIl, 6)
    
     
    II1Il1ll1lIl["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, II1Il1ll1lIl["\x54\x65\x78\x74\x42\x6f\x75\x6e\x64\x73"]["\x58"] + 24, 1, 0)
    
    local Il111I11IIl1 = Instance["\x6e\x65\x77"]("ScrollingFrame")
    Il111I11IIl1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 1, 0)
    Il111I11IIl1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1
    Il111I11IIl1["\x53\x63\x72\x6f\x6c\x6c\x42\x61\x72\x54\x68\x69\x63\x6b\x6e\x65\x73\x73"] = 2
    Il111I11IIl1["\x53\x63\x72\x6f\x6c\x6c\x42\x61\x72\x49\x6d\x61\x67\x65\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
    Il111I11IIl1["\x43\x61\x6e\x76\x61\x73\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 0, 0, 0)
    Il111I11IIl1["\x41\x75\x74\x6f\x6d\x61\x74\x69\x63\x43\x61\x6e\x76\x61\x73\x53\x69\x7a\x65"] = Enum["\x41\x75\x74\x6f\x6d\x61\x74\x69\x63\x53\x69\x7a\x65"]["\x59"]
    Il111I11IIl1["\x56\x69\x73\x69\x62\x6c\x65"] = false
    Il111I11IIl1["\x50\x61\x72\x65\x6e\x74"] = II1I1l1IIIIl
    
    local lllI1Il11l11 = Instance["\x6e\x65\x77"]("UIListLayout")
    lllI1Il11l11["\x53\x6f\x72\x74\x4f\x72\x64\x65\x72"] = Enum["\x53\x6f\x72\x74\x4f\x72\x64\x65\x72"]["\x4c\x61\x79\x6f\x75\x74\x4f\x72\x64\x65\x72"]
    lllI1Il11l11["\x50\x61\x64\x64\x69\x6e\x67"] = UDim["\x6e\x65\x77"](0, 8)
    lllI1Il11l11["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
    
    local lIIIl111IlIl = Instance["\x6e\x65\x77"]("UIPadding")
    lIIIl111IlIl["\x50\x61\x64\x64\x69\x6e\x67\x4c\x65\x66\x74"] = UDim["\x6e\x65\x77"](0, 12)
    lIIIl111IlIl["\x50\x61\x64\x64\x69\x6e\x67\x52\x69\x67\x68\x74"] = UDim["\x6e\x65\x77"](0, 12)
    lIIIl111IlIl["\x50\x61\x64\x64\x69\x6e\x67\x54\x6f\x70"] = UDim["\x6e\x65\x77"](0, 12)
    lIIIl111IlIl["\x50\x61\x64\x64\x69\x6e\x67\x42\x6f\x74\x74\x6f\x6d"] = UDim["\x6e\x65\x77"](0, 12)
    lIIIl111IlIl["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
    
    local Ill1II1lI1I1 = {["\x42\x74\x6e"] = II1Il1ll1lIl, ["\x50\x61\x67\x65"] = Il111I11IIl1}
    table["\x69\x6e\x73\x65\x72\x74"](IIll11IlIIl1, Ill1II1lI1I1)
    
    II1Il1ll1lIl["\x41\x63\x74\x69\x76\x61\x74\x65\x64"]:Connect(function()
        if Il111I1lIIll then Il111I1lIIll["\x56\x69\x73\x69\x62\x6c\x65"] = false; Il111I1lIIll = nil end
        for _, v in ipairs(IIll11IlIIl1) do
            v["\x42\x74\x6e"]["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x4d\x75\x74\x65\x64"]
            v["\x42\x74\x6e"]["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
            v["\x50\x61\x67\x65"]["\x56\x69\x73\x69\x62\x6c\x65"] = false
        end
        II1Il1ll1lIl["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x65\x78\x74"]
        II1Il1ll1lIl["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
        Il111I11IIl1["\x56\x69\x73\x69\x62\x6c\x65"] = true
    end)
    
    if #IIll11IlIIl1 == 1 then
        II1Il1ll1lIl["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x65\x78\x74"]
        II1Il1ll1lIl["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
        Il111I11IIl1["\x56\x69\x73\x69\x62\x6c\x65"] = true
    end
    
    local III11lllI11I = {}
    
     
    function III11lllI11I:CreateSection(title)
        local IIIl1lIllIll = Instance["\x6e\x65\x77"]("Frame")
        IIIl1lIllIll["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 25)
        IIIl1lIllIll["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1
        IIIl1lIllIll["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
        local I1I1I1l1l11I = createLabel(IIIl1lIllIll, title, Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x4c\x65\x66\x74"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d\x42\x6f\x6c\x64"], 12, IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"])
        I1I1I1l1l11I["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 1, 0)
    end

     
    function III11lllI11I:CreateToggle(title, default, callback)
        local ll1lI1I11lII = default or false
        local l1Illll1II11 = Instance["\x6e\x65\x77"]("TextButton")
        l1Illll1II11["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 45)  
        l1Illll1II11["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
        l1Illll1II11["\x54\x65\x78\x74"] = ""
        l1Illll1II11["\x41\x75\x74\x6f\x42\x75\x74\x74\x6f\x6e\x43\x6f\x6c\x6f\x72"] = false
        l1Illll1II11["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
        
        local I1I1I1l1l11I = createLabel(l1Illll1II11, title, Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x4c\x65\x66\x74"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d"], 13, IIIlIl1ll1ll["\x54\x65\x78\x74"])
        I1I1I1l1l11I["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, -60, 1, 0); I1I1I1l1l11I["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 15, 0, 0)
        
        local llI11l11lIII = Instance["\x6e\x65\x77"]("Frame")
        llI11l11lIII["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 40, 0, 22)
        llI11l11lIII["\x41\x6e\x63\x68\x6f\x72\x50\x6f\x69\x6e\x74"] = Vector2["\x6e\x65\x77"](1, 0.5)
        llI11l11lIII["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](1, -15, 0.5, 0)
        llI11l11lIII["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = ll1lI1I11lII and IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"] or IIIlIl1ll1ll["\x54\x6f\x70\x42\x61\x72"]
        llI11l11lIII["\x50\x61\x72\x65\x6e\x74"] = l1Illll1II11
        
        local l1l1IIlIlll1 = Instance["\x6e\x65\x77"]("Frame")
        l1l1IIlIlll1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 16, 0, 16)
        l1l1IIlIlll1["\x41\x6e\x63\x68\x6f\x72\x50\x6f\x69\x6e\x74"] = Vector2["\x6e\x65\x77"](0, 0.5)
        l1l1IIlIlll1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, ll1lI1I11lII and 21 or 3, 0.5, 0)
        l1l1IIlIlll1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](255, 255, 255)
        l1l1IIlIlll1["\x42\x6f\x72\x64\x65\x72\x53\x69\x7a\x65\x50\x69\x78\x65\x6c"] = 0
        l1l1IIlIlll1["\x50\x61\x72\x65\x6e\x74"] = llI11l11lIII
        
        if ll1lI1I11lII then _G["\x41\x63\x74\x69\x76\x65\x52\x47\x42\x54\x6f\x67\x67\x6c\x65\x73"][llI11l11lIII] = true end

        l1Illll1II11["\x41\x63\x74\x69\x76\x61\x74\x65\x64"]:Connect(function()
            ll1lI1I11lII = not ll1lI1I11lII
            if ll1lI1I11lII then _G["\x41\x63\x74\x69\x76\x65\x52\x47\x42\x54\x6f\x67\x67\x6c\x65\x73"][llI11l11lIII] = true else _G["\x41\x63\x74\x69\x76\x65\x52\x47\x42\x54\x6f\x67\x67\x6c\x65\x73"][llI11l11lIII] = nil; l1lI1lIIIl1l:Create(llI11l11lIII, TweenInfo["\x6e\x65\x77"](0.2), {["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x6f\x70\x42\x61\x72"]}):Play() end
            l1lI1lIIIl1l:Create(l1l1IIlIlll1, TweenInfo["\x6e\x65\x77"](0.2), {["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, ll1lI1I11lII and 21 or 3, 0.5, 0)}):Play()
            if callback then callback(ll1lI1I11lII) end
        end)
    end
    
     
    function III11lllI11I:CreateDropdown(title, list, default, callback)
        list = list or {}
        local II1Il1IIll1l = default
        
        local II1Illl11Il1 = Instance["\x6e\x65\x77"]("TextButton")
        II1Illl11Il1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 45)
        II1Illl11Il1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
        II1Illl11Il1["\x54\x65\x78\x74"] = ""
        II1Illl11Il1["\x41\x75\x74\x6f\x42\x75\x74\x74\x6f\x6e\x43\x6f\x6c\x6f\x72"] = false
        II1Illl11Il1["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
        
        local I1I1I1l1l11I = createLabel(II1Illl11Il1, title .. ": " .. (default or "None"), Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x4c\x65\x66\x74"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d"], 13, IIIlIl1ll1ll["\x54\x65\x78\x74"])
        I1I1I1l1l11I["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, -40, 1, 0); I1I1I1l1l11I["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 15, 0, 0)
        
        local I11llIIlI1I1 = createLabel(II1Illl11Il1, "+", Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x52\x69\x67\x68\x74"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d\x42\x6f\x6c\x64"], 16, IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"])
        I11llIIlI1I1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 20, 1, 0); I11llIIlI1I1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](1, -25, 0, 0)

        local l1l1llIlIII1 = Instance["\x6e\x65\x77"]("Frame")
        l1l1llIlIII1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
        l1l1llIlIII1["\x42\x6f\x72\x64\x65\x72\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
        l1l1llIlIII1["\x42\x6f\x72\x64\x65\x72\x53\x69\x7a\x65\x50\x69\x78\x65\x6c"] = 1
        l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"] = false
        l1l1llIlIII1["\x43\x6c\x69\x70\x73\x44\x65\x73\x63\x65\x6e\x64\x61\x6e\x74\x73"] = true
        l1l1llIlIII1["\x5a\x49\x6e\x64\x65\x78"] = 100
        l1l1llIlIII1["\x50\x61\x72\x65\x6e\x74"] = l1l1Il111lIl

        local l111IllI1llI = Instance["\x6e\x65\x77"]("ScrollingFrame")
        l111IllI1llI["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 1, 0)
        l111IllI1llI["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1
        l111IllI1llI["\x53\x63\x72\x6f\x6c\x6c\x42\x61\x72\x54\x68\x69\x63\x6b\x6e\x65\x73\x73"] = 3
        l111IllI1llI["\x53\x63\x72\x6f\x6c\x6c\x42\x61\x72\x49\x6d\x61\x67\x65\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
        l111IllI1llI["\x5a\x49\x6e\x64\x65\x78"] = 101
        l111IllI1llI["\x43\x61\x6e\x76\x61\x73\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 0, 0, 0)
        l111IllI1llI["\x41\x75\x74\x6f\x6d\x61\x74\x69\x63\x43\x61\x6e\x76\x61\x73\x53\x69\x7a\x65"] = Enum["\x41\x75\x74\x6f\x6d\x61\x74\x69\x63\x53\x69\x7a\x65"]["\x59"]
        l111IllI1llI["\x50\x61\x72\x65\x6e\x74"] = l1l1llIlIII1
        
        local I1lIIII11Il1 = Instance["\x6e\x65\x77"]("UIListLayout")
        I1lIIII11Il1["\x53\x6f\x72\x74\x4f\x72\x64\x65\x72"] = Enum["\x53\x6f\x72\x74\x4f\x72\x64\x65\x72"]["\x4c\x61\x79\x6f\x75\x74\x4f\x72\x64\x65\x72"]
        I1lIIII11Il1["\x50\x61\x64\x64\x69\x6e\x67"] = UDim["\x6e\x65\x77"](0, 2)
        I1lIIII11Il1["\x50\x61\x72\x65\x6e\x74"] = l111IllI1llI

        local lI1IllIIIllI = Instance["\x6e\x65\x77"]("UIPadding"); lI1IllIIIllI["\x50\x61\x64\x64\x69\x6e\x67\x4c\x65\x66\x74"] = UDim["\x6e\x65\x77"](0, 2); lI1IllIIIllI["\x50\x61\x64\x64\x69\x6e\x67\x52\x69\x67\x68\x74"] = UDim["\x6e\x65\x77"](0, 2); lI1IllIIIllI["\x50\x61\x64\x64\x69\x6e\x67\x54\x6f\x70"] = UDim["\x6e\x65\x77"](0, 2); lI1IllIIIllI["\x50\x61\x64\x64\x69\x6e\x67\x42\x6f\x74\x74\x6f\x6d"] = UDim["\x6e\x65\x77"](0, 2); lI1IllIIIllI["\x50\x61\x72\x65\x6e\x74"] = l111IllI1llI

        II1Illl11Il1["\x41\x63\x74\x69\x76\x61\x74\x65\x64"]:Connect(function()
            local Ill11II1lllI = not l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"]
            if Il111I1lIIll and Il111I1lIIll ~= l1l1llIlIII1 then Il111I1lIIll["\x56\x69\x73\x69\x62\x6c\x65"] = false end
            
            I11llIIlI1I1["\x54\x65\x78\x74"] = Ill11II1lllI and "-" or "+"
            l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"] = Ill11II1lllI
            Il111I1lIIll = Ill11II1lllI and l1l1llIlIII1 or nil

            if Ill11II1lllI then
                _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x42\x75\x74\x74\x6f\x6e"] = II1Illl11Il1
                _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] = l1l1llIlIII1
                local IIIll11I1lll = 35; local IlI1111lIIl1 = 4; local IIlllIl1l11l = 150
                local Il11lIIlI111 = (#list * IIIll11I1lll) + ((#list - 1) * I1lIIII11Il1["\x50\x61\x64\x64\x69\x6e\x67"]["\x4f\x66\x66\x73\x65\x74"]) + IlI1111lIIl1
                local IllIIl111llI = math["\x6d\x69\x6e"](Il11lIIlI111, IIlllIl1l11l)

                l1l1llIlIII1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x58"], 0, IllIIl111llI)
                local ll1Il1lI1llI = II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x58"]
                local lI1Il1IlI11I = II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x59"] + II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x59"]
                if (II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x59"] + II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x59"] + IllIIl111llI) > l1l1Il111lIl["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x59"] then
                    lI1Il1IlI11I = II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x59"] - IllIIl111llI
                end
                l1l1llIlIII1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, ll1Il1lI1llI, 0, lI1Il1IlI11I)
            else
                if _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] == l1l1llIlIII1 then
                    _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] = nil; _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x42\x75\x74\x74\x6f\x6e"] = nil
                end
            end
        end)
        
        Il111I11IIl1:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
            if l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"] then 
                l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"] = false; Il111I1lIIll = nil; I11llIIlI1I1["\x54\x65\x78\x74"] = "+" 
                if _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] == l1l1llIlIII1 then _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] = nil; _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x42\x75\x74\x74\x6f\x6e"] = nil end
            end
        end)
        
        for _, item in ipairs(list) do
            local l1IlllI1I1Il = Instance["\x6e\x65\x77"]("TextButton")
            l1IlllI1I1Il["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 35)
            l1IlllI1I1Il["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
            l1IlllI1I1Il["\x54\x65\x78\x74"] = "  " .. item
            l1IlllI1I1Il["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x4d\x75\x74\x65\x64"]
            l1IlllI1I1Il["\x46\x6f\x6e\x74"] = Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d"]
            l1IlllI1I1Il["\x54\x65\x78\x74\x53\x69\x7a\x65"] = 13
            l1IlllI1I1Il["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"] = Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x4c\x65\x66\x74"]
            l1IlllI1I1Il["\x5a\x49\x6e\x64\x65\x78"] = 102
            l1IlllI1I1Il["\x42\x6f\x72\x64\x65\x72\x53\x69\x7a\x65\x50\x69\x78\x65\x6c"] = 0
            l1IlllI1I1Il["\x41\x75\x74\x6f\x42\x75\x74\x74\x6f\x6e\x43\x6f\x6c\x6f\x72"] = false
            l1IlllI1I1Il["\x50\x61\x72\x65\x6e\x74"] = l111IllI1llI

            l1IlllI1I1Il["\x4d\x6f\x75\x73\x65\x45\x6e\x74\x65\x72"]:Connect(function() l1IlllI1I1Il["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x48\x6f\x76\x65\x72"] end)
            l1IlllI1I1Il["\x4d\x6f\x75\x73\x65\x4c\x65\x61\x76\x65"]:Connect(function() l1IlllI1I1Il["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"] end)
            
            l1IlllI1I1Il["\x41\x63\x74\x69\x76\x61\x74\x65\x64"]:Connect(function()
                if II1Il1IIll1l == item then II1Il1IIll1l = nil; I1I1I1l1l11I["\x54\x65\x78\x74"] = title .. ": None"; if callback then callback(nil) end
                else II1Il1IIll1l = item; I1I1I1l1l11I["\x54\x65\x78\x74"] = title .. ": " .. item; if callback then callback(item) end end
                I11llIIlI1I1["\x54\x65\x78\x74"] = "+"
                l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"] = false
                Il111I1lIIll = nil
                if _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] == l1l1llIlIII1 then _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] = nil; _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x42\x75\x74\x74\x6f\x6e"] = nil end
            end)
        end
    end
    
    function III11lllI11I:CreateSlider(title, min, max, default, callback)
        local llI1IIl111Il = min or 0
        local IIl1II111ll1 = max or 100
        local II1lII11lI1I = default or llI1IIl111Il
        
        local I1IIIIIIl1I1 = Instance["\x6e\x65\x77"]("Frame")
        I1IIIIIIl1I1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 60)
        I1IIIIIIl1I1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
        I1IIIIIIl1I1["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
        
        local I1I1I1l1l11I = createLabel(I1IIIIIIl1I1, title .. ": " .. II1lII11lI1I, Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x4c\x65\x66\x74"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d"], 13, IIIlIl1ll1ll["\x54\x65\x78\x74"])
        I1I1I1l1l11I["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, -30, 0, 30); I1I1I1l1l11I["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 15, 0, 0)
        
        local I11IllI1l1II = Instance["\x6e\x65\x77"]("Frame")
        I11IllI1l1II["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, -30, 0, 6)
        I11IllI1l1II["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 15, 0, 38)
        I11IllI1l1II["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x6f\x70\x42\x61\x72"]
        I11IllI1l1II["\x50\x61\x72\x65\x6e\x74"] = I1IIIIIIl1I1
        round(I11IllI1l1II, 3)
        
        local lI1IIIlI1lI1 = Instance["\x6e\x65\x77"]("Frame")
        local Il11I1IIllll = 0
        if IIl1II111ll1 > llI1IIl111Il then
            Il11I1IIllll = math["\x63\x6c\x61\x6d\x70"]((II1lII11lI1I - llI1IIl111Il) / (IIl1II111ll1 - llI1IIl111Il), 0, 1)
        end
        lI1IIIlI1lI1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](Il11I1IIllll, 0, 1, 0)
        lI1IIIlI1lI1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
        lI1IIIlI1lI1["\x50\x61\x72\x65\x6e\x74"] = I11IllI1l1II
        round(lI1IIIlI1lI1, 3)
        
        local II1Illl11Il1 = Instance["\x6e\x65\x77"]("TextButton")
        II1Illl11Il1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 1, 20)
        II1Illl11Il1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 0, 0, -10)
        II1Illl11Il1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1
        II1Illl11Il1["\x54\x65\x78\x74"] = ""
        II1Illl11Il1["\x50\x61\x72\x65\x6e\x74"] = I11IllI1l1II
        
        local IIlll11l1Ill = false
        II1Illl11Il1["\x49\x6e\x70\x75\x74\x42\x65\x67\x61\x6e"]:Connect(function(i) if i["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x4d\x6f\x75\x73\x65\x42\x75\x74\x74\x6f\x6e\x31"] or i["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x54\x6f\x75\x63\x68"] then IIlll11l1Ill = true end end)
        IllIII1llIlI["\x49\x6e\x70\x75\x74\x45\x6e\x64\x65\x64"]:Connect(function(i) if i["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x4d\x6f\x75\x73\x65\x42\x75\x74\x74\x6f\x6e\x31"] or i["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x54\x6f\x75\x63\x68"] then IIlll11l1Ill = false end end)
        IllIII1llIlI["\x49\x6e\x70\x75\x74\x43\x68\x61\x6e\x67\x65\x64"]:Connect(function(i)
            if IIlll11l1Ill and (i["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x4d\x6f\x75\x73\x65\x4d\x6f\x76\x65\x6d\x65\x6e\x74"] or i["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"] == Enum["\x55\x73\x65\x72\x49\x6e\x70\x75\x74\x54\x79\x70\x65"]["\x54\x6f\x75\x63\x68"]) then
                local I1lIlI11lI1I = math["\x63\x6c\x61\x6d\x70"]((i["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x58"] - I11IllI1l1II["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x58"]) / I11IllI1l1II["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x58"], 0, 1)
                local lI111l1lII1l = math["\x66\x6c\x6f\x6f\x72"](llI1IIl111Il + (IIl1II111ll1 - llI1IIl111Il) * I1lIlI11lI1I)
                lI1IIIlI1lI1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](I1lIlI11lI1I, 0, 1, 0)
                I1I1I1l1l11I["\x54\x65\x78\x74"] = title .. ": " .. lI111l1lII1l
                if callback then callback(lI111l1lII1l) end
            end
        end)
    end
    
     
    function III11lllI11I:CreateMultiDropdown(title, list, defaultDict, callback)
        list = list or {}
        local l11I1IlI1lll = defaultDict or {}
        
        local II1Illl11Il1 = Instance["\x6e\x65\x77"]("TextButton")
        II1Illl11Il1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 45)
        II1Illl11Il1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
        II1Illl11Il1["\x54\x65\x78\x74"] = ""
        II1Illl11Il1["\x41\x75\x74\x6f\x42\x75\x74\x74\x6f\x6e\x43\x6f\x6c\x6f\x72"] = false
        II1Illl11Il1["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
        
        local I1I1I1l1l11I = createLabel(II1Illl11Il1, title, Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x4c\x65\x66\x74"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d"], 13, IIIlIl1ll1ll["\x54\x65\x78\x74"])
        I1I1I1l1l11I["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, -40, 1, 0); I1I1I1l1l11I["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 15, 0, 0)
        
        local I11llIIlI1I1 = createLabel(II1Illl11Il1, "+", Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x52\x69\x67\x68\x74"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d\x42\x6f\x6c\x64"], 16, IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"])
        I11llIIlI1I1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 20, 1, 0); I11llIIlI1I1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](1, -25, 0, 0)

        local l1l1llIlIII1 = Instance["\x6e\x65\x77"]("Frame")
        l1l1llIlIII1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
        l1l1llIlIII1["\x42\x6f\x72\x64\x65\x72\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
        l1l1llIlIII1["\x42\x6f\x72\x64\x65\x72\x53\x69\x7a\x65\x50\x69\x78\x65\x6c"] = 1
        l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"] = false
        l1l1llIlIII1["\x43\x6c\x69\x70\x73\x44\x65\x73\x63\x65\x6e\x64\x61\x6e\x74\x73"] = true
        l1l1llIlIII1["\x5a\x49\x6e\x64\x65\x78"] = 100
        l1l1llIlIII1["\x50\x61\x72\x65\x6e\x74"] = l1l1Il111lIl

        local l111IllI1llI = Instance["\x6e\x65\x77"]("ScrollingFrame")
        l111IllI1llI["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 1, 0)
        l111IllI1llI["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1
        l111IllI1llI["\x53\x63\x72\x6f\x6c\x6c\x42\x61\x72\x54\x68\x69\x63\x6b\x6e\x65\x73\x73"] = 3
        l111IllI1llI["\x53\x63\x72\x6f\x6c\x6c\x42\x61\x72\x49\x6d\x61\x67\x65\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]
        l111IllI1llI["\x5a\x49\x6e\x64\x65\x78"] = 101
        l111IllI1llI["\x43\x61\x6e\x76\x61\x73\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 0, 0, 0)
        l111IllI1llI["\x41\x75\x74\x6f\x6d\x61\x74\x69\x63\x43\x61\x6e\x76\x61\x73\x53\x69\x7a\x65"] = Enum["\x41\x75\x74\x6f\x6d\x61\x74\x69\x63\x53\x69\x7a\x65"]["\x59"]
        l111IllI1llI["\x50\x61\x72\x65\x6e\x74"] = l1l1llIlIII1
        
        local I1lIIII11Il1 = Instance["\x6e\x65\x77"]("UIListLayout")
        I1lIIII11Il1["\x53\x6f\x72\x74\x4f\x72\x64\x65\x72"] = Enum["\x53\x6f\x72\x74\x4f\x72\x64\x65\x72"]["\x4c\x61\x79\x6f\x75\x74\x4f\x72\x64\x65\x72"]
        I1lIIII11Il1["\x50\x61\x64\x64\x69\x6e\x67"] = UDim["\x6e\x65\x77"](0, 2)
        I1lIIII11Il1["\x50\x61\x72\x65\x6e\x74"] = l111IllI1llI

        local lI1IllIIIllI = Instance["\x6e\x65\x77"]("UIPadding"); lI1IllIIIllI["\x50\x61\x64\x64\x69\x6e\x67\x4c\x65\x66\x74"] = UDim["\x6e\x65\x77"](0, 2); lI1IllIIIllI["\x50\x61\x64\x64\x69\x6e\x67\x52\x69\x67\x68\x74"] = UDim["\x6e\x65\x77"](0, 2); lI1IllIIIllI["\x50\x61\x64\x64\x69\x6e\x67\x54\x6f\x70"] = UDim["\x6e\x65\x77"](0, 2); lI1IllIIIllI["\x50\x61\x64\x64\x69\x6e\x67\x42\x6f\x74\x74\x6f\x6d"] = UDim["\x6e\x65\x77"](0, 2); lI1IllIIIllI["\x50\x61\x72\x65\x6e\x74"] = l111IllI1llI

        II1Illl11Il1["\x41\x63\x74\x69\x76\x61\x74\x65\x64"]:Connect(function()
            local Ill11II1lllI = not l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"]
            if Il111I1lIIll and Il111I1lIIll ~= l1l1llIlIII1 then Il111I1lIIll["\x56\x69\x73\x69\x62\x6c\x65"] = false end
            
            I11llIIlI1I1["\x54\x65\x78\x74"] = Ill11II1lllI and "-" or "+"
            l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"] = Ill11II1lllI
            Il111I1lIIll = Ill11II1lllI and l1l1llIlIII1 or nil

            if Ill11II1lllI then
                _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x42\x75\x74\x74\x6f\x6e"] = II1Illl11Il1
                _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] = l1l1llIlIII1
                local IIIll11I1lll = 35; local IlI1111lIIl1 = 4; local IIlllIl1l11l = 150
                local Il11lIIlI111 = (#list * IIIll11I1lll) + ((#list - 1) * I1lIIII11Il1["\x50\x61\x64\x64\x69\x6e\x67"]["\x4f\x66\x66\x73\x65\x74"]) + IlI1111lIIl1
                local IllIIl111llI = math["\x6d\x69\x6e"](Il11lIIlI111, IIlllIl1l11l)

                l1l1llIlIII1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x58"], 0, IllIIl111llI)
                local ll1Il1lI1llI = II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x58"]
                local lI1Il1IlI11I = II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x59"] + II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x59"]
                if (II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x59"] + II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x59"] + IllIIl111llI) > l1l1Il111lIl["\x41\x62\x73\x6f\x6c\x75\x74\x65\x53\x69\x7a\x65"]["\x59"] then
                    lI1Il1IlI11I = II1Illl11Il1["\x41\x62\x73\x6f\x6c\x75\x74\x65\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x59"] - IllIIl111llI
                end
                l1l1llIlIII1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, ll1Il1lI1llI, 0, lI1Il1IlI11I)
            else
                if _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] == l1l1llIlIII1 then
                    _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] = nil; _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x42\x75\x74\x74\x6f\x6e"] = nil
                end
            end
        end)
        
        Il111I11IIl1:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
            if l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"] then 
                l1l1llIlIII1["\x56\x69\x73\x69\x62\x6c\x65"] = false; Il111I1lIIll = nil; I11llIIlI1I1["\x54\x65\x78\x74"] = "+" 
                if _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] == l1l1llIlIII1 then _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x43\x6f\x6e\x74\x61\x69\x6e\x65\x72"] = nil; _G["\x41\x63\x74\x69\x76\x65\x44\x72\x6f\x70\x64\x6f\x77\x6e\x42\x75\x74\x74\x6f\x6e"] = nil end
            end
        end)
        
        local function updateLabel()
            local l1111I1I1111 = 0; for k, v in pairs(l11I1IlI1lll) do if v then l1111I1I1111 = l1111I1I1111 + 1 end end; I1I1I1l1l11I["\x54\x65\x78\x74"] = title .. " (" .. l1111I1I1111 .. ")"
        end
        
        for _, item in ipairs(list) do
            local l1IlllI1I1Il = Instance["\x6e\x65\x77"]("TextButton")
            l1IlllI1I1Il["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 35)
            l1IlllI1I1Il["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
            l1IlllI1I1Il["\x54\x65\x78\x74"] = "  " .. item .. (l11I1IlI1lll[item] and " [ON]" or ""); l1IlllI1I1Il["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = l11I1IlI1lll[item] and IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"] or IIIlIl1ll1ll["\x4d\x75\x74\x65\x64"]; l1IlllI1I1Il["\x46\x6f\x6e\x74"] = Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d"]; l1IlllI1I1Il["\x54\x65\x78\x74\x53\x69\x7a\x65"] = 13; l1IlllI1I1Il["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"] = Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x4c\x65\x66\x74"]; l1IlllI1I1Il["\x5a\x49\x6e\x64\x65\x78"] = 102; l1IlllI1I1Il["\x42\x6f\x72\x64\x65\x72\x53\x69\x7a\x65\x50\x69\x78\x65\x6c"] = 0; l1IlllI1I1Il["\x41\x75\x74\x6f\x42\x75\x74\x74\x6f\x6e\x43\x6f\x6c\x6f\x72"] = false; l1IlllI1I1Il["\x50\x61\x72\x65\x6e\x74"] = l111IllI1llI
            l1IlllI1I1Il["\x4d\x6f\x75\x73\x65\x45\x6e\x74\x65\x72"]:Connect(function() l1IlllI1I1Il["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x48\x6f\x76\x65\x72"] end)
            l1IlllI1I1Il["\x4d\x6f\x75\x73\x65\x4c\x65\x61\x76\x65"]:Connect(function() l1IlllI1I1Il["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"] end)
            
            l1IlllI1I1Il["\x41\x63\x74\x69\x76\x61\x74\x65\x64"]:Connect(function()
                l11I1IlI1lll[item] = not l11I1IlI1lll[item]; l1IlllI1I1Il["\x54\x65\x78\x74"] = "  " .. item .. (l11I1IlI1lll[item] and " [ON]" or ""); l1IlllI1I1Il["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = l11I1IlI1lll[item] and IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"] or IIIlIl1ll1ll["\x4d\x75\x74\x65\x64"]; updateLabel(); if callback then callback(l11I1IlI1lll) end
            end)
        end
        updateLabel()
    end

    function III11lllI11I:CreateTextBox(title, placeholder, callback)
        local II1Illl11Il1 = Instance["\x6e\x65\x77"]("Frame")
        II1Illl11Il1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 45)
        II1Illl11Il1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
        II1Illl11Il1["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
        local I1I1I1l1l11I = createLabel(II1Illl11Il1, title, Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x4c\x65\x66\x74"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d"], 13, IIIlIl1ll1ll["\x54\x65\x78\x74"])
        I1I1I1l1l11I["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0.5, -15, 1, 0); I1I1I1l1l11I["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 15, 0, 0)
        local l1l1IIlIlll1 = Instance["\x6e\x65\x77"]("TextBox")
        l1l1IIlIlll1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0.5, -15, 0.7, 0); l1l1IIlIlll1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0.5, 0, 0.15, 0)
        l1l1IIlIlll1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x6f\x70\x42\x61\x72"]; l1l1IIlIlll1["\x54\x65\x78\x74\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x65\x78\x74"]; l1l1IIlIlll1["\x50\x6c\x61\x63\x65\x68\x6f\x6c\x64\x65\x72\x54\x65\x78\x74"] = placeholder
        l1l1IIlIlll1["\x46\x6f\x6e\x74"] = Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d"]; l1l1IIlIlll1["\x54\x65\x78\x74\x53\x69\x7a\x65"] = 13; l1l1IIlIlll1["\x50\x61\x72\x65\x6e\x74"] = II1Illl11Il1
        round(l1l1IIlIlll1, 4)
        l1l1IIlIlll1["\x46\x6f\x63\x75\x73\x4c\x6f\x73\x74"]:Connect(function() if callback then callback(l1l1IIlIlll1["\x54\x65\x78\x74"]) end end)
        return l1l1IIlIlll1
    end

    function III11lllI11I:CreateLabel(title, color)
        local II1Illl11Il1 = Instance["\x6e\x65\x77"]("Frame")
        II1Illl11Il1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 30)
        II1Illl11Il1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
        II1Illl11Il1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1
        II1Illl11Il1["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
        local I1I1I1l1l11I = createLabel(II1Illl11Il1, title, Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x43\x65\x6e\x74\x65\x72"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d\x42\x6f\x6c\x64"], 13, color or IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"])
        I1I1I1l1l11I["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 1, 0)
        return I1I1I1l1l11I
    end

    function III11lllI11I:CreateButton(title, callback)
        local II1Illl11Il1 = Instance["\x6e\x65\x77"]("TextButton")
        II1Illl11Il1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 45)
        II1Illl11Il1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"]
        II1Illl11Il1["\x54\x65\x78\x74"] = ""
        II1Illl11Il1["\x41\x75\x74\x6f\x42\x75\x74\x74\x6f\x6e\x43\x6f\x6c\x6f\x72"] = false
        II1Illl11Il1["\x50\x61\x72\x65\x6e\x74"] = Il111I11IIl1
        
        local I1I1I1l1l11I = createLabel(II1Illl11Il1, title, Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x43\x65\x6e\x74\x65\x72"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d\x42\x6f\x6c\x64"], 13, IIIlIl1ll1ll["\x54\x65\x78\x74"])
        I1I1I1l1l11I["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 1, 0)
        
        II1Illl11Il1["\x4d\x6f\x75\x73\x65\x45\x6e\x74\x65\x72"]:Connect(function() II1Illl11Il1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x48\x6f\x76\x65\x72"] end)
        II1Illl11Il1["\x4d\x6f\x75\x73\x65\x4c\x65\x61\x76\x65"]:Connect(function() II1Illl11Il1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x42\x47"] end)
        
        II1Illl11Il1["\x41\x63\x74\x69\x76\x61\x74\x65\x64"]:Connect(function()
            l1lI1lIIIl1l:Create(II1Illl11Il1, TweenInfo["\x6e\x65\x77"](0.1), {["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]}):Play()
            task["\x64\x65\x6c\x61\x79"](0.1, function() l1lI1lIIIl1l:Create(II1Illl11Il1, TweenInfo["\x6e\x65\x77"](0.1), {["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x45\x6c\x65\x6d\x65\x6e\x74\x48\x6f\x76\x65\x72"]}):Play() end)
            if callback then callback() end
        end)
        return II1Illl11Il1
    end

    return III11lllI11I
end

 
 
 

local IllI11I11l1I = {"AizenBoss", "AlucardBoss", "AnosBoss", "AtomicBoss", "BlessedMaidenBoss", "EscanorBoss", "GilgameshBoss", "GojoBoss", "IchigoBoss", "JinwooBoss", "MadokaBoss", "QinShiBoss", "RagnaBoss", "RimuruBoss", "SaberAlterBoss", "SaberBoss", "ShadowBoss", "ShadowMonarchBoss", "StrongestinHistoryBoss", "StrongestofTodayBoss", "StrongestShinobiBoss", "SukunaBoss", "TrueAizenBoss", "YamatoBoss", "YujiBoss"}

local l1lIIl1ll11I = {
    ["Wood"] = "AutoLevel", ["Common Chest"] = "AutoLevel",
    ["Energy Core"] = "YujiBoss", ["Haki Color Reroll"] = "AllBosses", ["Iron"] = "AutoLevel", ["Rare Chest"] = "AutoLevel",
    ["Abyss Edge"] = "JinwooBoss", ["Awakened Cursed Finger"] = "StrongestinHistoryBoss", ["Black Frost"] = "RagnaBoss",
    ["Boss Ticket"] = "AllBosses", ["Broken Sword"] = "AutoLevel", ["Chrysalis Sigil"] = "AllBosses", ["Cursed Finger"] = "SukunaBoss", 
    ["Dark Grail"] = "AllBosses", ["Divine Grail"] = "AllBosses", ["Divine Fragment"] = "MadokaBoss", ["Dungeon Key"] = "AllBosses", ["Epic Chest"] = "AutoLevel", 
    ["Flash Impact"] = "YujiBoss", ["Fusion Ring"] = "TrueAizenBoss", ["Heart"] = "MadokaBoss", ["Illusion Prism"] = "AizenBoss",
    ["Limitless Key"] = "GojoBoss", ["Limitless Ring"] = "GojoBoss", ["Malevolent Key"] = "SukunaBoss", 
    ["Mirage Pen"] = "AizenBoss", ["Monarch Core"] = "ShadowMonarchBoss", ["Morgan Remnant"] = "SaberAlterBoss", ["Obsidian"] = "AutoLevel", 
    ["Race Reroll"] = "AllBosses", ["Reversal Pulse"] = "StrongestofTodayBoss", ["Sage Pulse"] = "RimuruBoss", 
    ["Slime Shard"] = "Slime", ["Soul Fragment"] = "IchigoBoss", ["Tempest Relic"] = "AllBosses", ["Throne Remnant"] = "GilgameshBoss", ["Tide Remnant"] = "BlessedMaidenBoss",
    ["Trait Reroll"] = "AllBosses", ["Umbral Capsule"] = "ShadowBoss", ["Vessel Ring"] = "StrongestinHistoryBoss",
    ["Void Fragment"] = "GojoBoss", ["Worthiness Fragment"] = "Hollow", ["Wyrm Brand"] = "RagnaBoss",
    ["Alter Essence"] = "SaberAlterBoss", ["Ancient Shard"] = "GilgameshBoss", ["Blue Singularity"] = "StrongestofTodayBoss", ["Calamity Seal"] = "AutoLevel", 
    ["Clan Reroll"] = "AutoLevel", ["Cursed Talisman"] = "Curse", ["Dark Ring"] = "JinwooBoss", 
    ["Dismantle Fang"] = "SukunaBoss", ["Divergent Pulse"] = "YujiBoss", ["Divinity Essence"] = "TrueAizenBoss", ["Energy Shard"] = "StrongSorcerer", ["Gale Essence"] = "BlessedMaidenBoss", 
    ["Golden Essence"] = "GilgameshBoss", ["Infinity Core"] = "GojoBoss", ["Jade Tablet"] = "QinShiBoss", 
    ["Legendary Chest"] = "AutoLevel", ["Malevolent Soul"] = "StrongestinHistoryBoss", ["Monarch Essence"] = "ShadowMonarchBoss", 
    ["Mythril"] = "AutoLevel", ["Radiant Core"] = "MadokaBoss", ["Reiatsu Core"] = "AizenBoss", 
    ["Sacred Bow"] = "MadokaBoss", ["Shadow Essence"] = "ShadowMonarchBoss", ["Silver Requiem"] = "RagnaBoss", 
    ["Six Eye"] = "StrongestofTodayBoss", ["Slime Remnant"] = "RimuruBoss", ["Soul Amulet"] = "AlucardBoss", 
    ["Spiritual Core"] = "IchigoBoss", ["Tempest Seal"] = "RimuruBoss", ["Void Seed"] = "ShadowBoss",
    ["Adamantite"] = "Hollow", ["Aero Core"] = "BlessedMaidenBoss", ["Alter Armor"] = "SaberAlterBoss", ["Atomic Core"] = "ShadowBoss", ["Blood Ring"] = "AlucardBoss", 
    ["Casull"] = "AlucardBoss", ["Celestial Mark"] = "BlessedMaidenBoss", ["Conqueror Fragment"] = "AutoLevel", ["Corrupt Crown"] = "SaberAlterBoss", ["Corruption Core"] = "SaberAlterBoss", ["Crimson Heart"] = "SukunaBoss", 
    ["Cursed Flesh"] = "StrongestinHistoryBoss", ["Evolution Fragment"] = "TrueAizenBoss", ["Gilgamesh Armor"] = "GilgameshBoss", ["Hogyoku Fragment"] = "AizenBoss", ["Imperial Seal"] = "QinShiBoss", 
    ["Infinity Essence"] = "StrongestofTodayBoss", ["Kamish Dagger"] = "ShadowMonarchBoss", ["Maiden Outfit"] = "BlessedMaidenBoss", ["Manipulator Outfit"] = "TrueAizenBoss", ["Mythical Chest"] = "AutoLevel", 
    ["Phantasm Core"] = "GilgameshBoss", ["Pink Gem"] = "MadokaBoss", ["Shadow Crystal"] = "ShadowMonarchBoss", 
    ["Shadow Heart"] = "JinwooBoss", ["Slime Core"] = "RimuruBoss", ["Soul Flame"] = "IchigoBoss", ["Transcendent Core"] = "TrueAizenBoss",
    ["Aura Crate"] = {"StrongestShinobiBoss", "YamatoBoss", "MadokaBoss", "AizenBoss", "AlucardBoss", "ArenaFighter", "Ninja", "Quincy"},
    ["Cosmetic Crate"] = {"StrongestShinobiBoss", "YamatoBoss", "MadokaBoss", "AizenBoss", "AlucardBoss", "ArenaFighter", "Ninja", "Quincy"},
    ["Secret Chest"] = "AutoLevel"
}

local lll1ll1l11I1 = {
    ["Collector"] = { ["\x74\x79\x70\x65"] = "ItemDrops", ["\x61\x6d\x6f\x75\x6e\x74"] = 200 }, ["Hoarder"] = { ["\x74\x79\x70\x65"] = "ItemDrops", ["\x61\x6d\x6f\x75\x6e\x74"] = 1000 }, ["Treasure Hunter"] = { ["\x74\x79\x70\x65"] = "ItemDrops", ["\x61\x6d\x6f\x75\x6e\x74"] = 3000 }, ["Golden Tyrant"] = { ["\x74\x79\x70\x65"] = "ItemDrops", ["\x61\x6d\x6f\x75\x6e\x74"] = 10000 },
    ["Lucky Novice"] = { ["\x74\x79\x70\x65"] = "BossKills", ["\x61\x6d\x6f\x75\x6e\x74"] = 10 }, ["Fortune Seeker"] = { ["\x74\x79\x70\x65"] = "BossKills", ["\x61\x6d\x6f\x75\x6e\x74"] = 25 }, ["Lucky Star"] = { ["\x74\x79\x70\x65"] = "BossKills", ["\x61\x6d\x6f\x75\x6e\x74"] = 75 }, ["Blessed One"] = { ["\x74\x79\x70\x65"] = "BossKills", ["\x61\x6d\x6f\x75\x6e\x74"] = 250 }, ["The Chosen One"] = { ["\x74\x79\x70\x65"] = "BossKills", ["\x61\x6d\x6f\x75\x6e\x74"] = 500 }, ["Blessed Sovereign"] = { ["\x74\x79\x70\x65"] = "BossKills", ["\x61\x6d\x6f\x75\x6e\x74"] = 1250 }, ["Destiny Marked"] = { ["\x74\x79\x70\x65"] = "BossKills", ["\x61\x6d\x6f\x75\x6e\x74"] = 2500 }, ["Celestial Favor"] = { ["\x74\x79\x70\x65"] = "BossKills", ["\x61\x6d\x6f\x75\x6e\x74"] = 5000 },
    ["Blade Master"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "SaberBoss" }, ["Honored One"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "GojoBoss" }, ["Curse King"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "SukunaBoss" }, ["Shadow Monarch"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "JinwooBoss" }, ["Manipulator"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "AizenBoss" }, ["King of Beginning"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "QinShiBoss" }, ["Living Weapon"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "YujiBoss" }, ["Eminence in Shadow"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "ShadowBoss" }, ["Vampire King"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "AlucardBoss" }, ["Soul Reaper"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "IchigoBoss" }, ["Strongest Sorcerer"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "StrongestofTodayBoss" }, ["Disgraced One"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "StrongestinHistoryBoss" }, ["Demon Lord"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "RimuruBoss" }, ["Golden King"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "GilgameshBoss" }, ["Demon King"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "ShadowMonarchBoss" }, ["King of Shadows"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "ShadowMonarchBoss" },
    ["The One"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "EscanorBoss" }, ["Blade Sovereign"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "YamatoBoss" }, ["Astral Empress"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "BlessedMaidenBoss" }, ["Transcendent Being"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "TrueAizenBoss" }, ["Corrupt Tyrant"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "SaberAlterBoss" }, ["Battlefield Warlord"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "StrongestShinobiBoss" }, ["Eminence Incarnate"] = { ["\x74\x79\x70\x65"] = "Boss", ["\x6e\x61\x6d\x65"] = "AtomicBoss" },
    ["Void Empress"] = { ["\x74\x79\x70\x65"] = "Dungeon", ["\x6e\x61\x6d\x65"] = "InfiniteTower" }
}

local IIIIl11l1IlI = {
    ["SaberBoss"] = { ["Boss Key"] = 1 }, ["QinShiBoss"] = { ["Boss Key"] = 3 }, ["IchigoBoss"] = { ["Boss Key"] = 5 }, ["GilgameshBoss"] = { ["Divine Grail"] = 1 }, ["RimuruBoss"] = { ["Slime Key"] = 1 }, ["AnosBoss"] = { ["Calamity Seal"] = 1 }, ["StrongestofTodayBoss"] = { ["Limitless Key"] = 1 }, ["StrongestinHistoryBoss"] = { ["Malevolent Key"] = 1 }, ["BlessedMaidenBoss"] = { ["Tempest Relic"] = 1 }, ["TrueAizenBoss"] = { ["Chrysalis Sigil"] = 1 }, ["SaberAlterBoss"] = { ["Dark Grail"] = 1 }, ["AtomicBoss"] = { ["Atomic Omen"] = 1}
}


local function saveConfig(name, ll1lI1I11lII)
    if writefile then
        if not isfolder("JomHUB_Configs") then pcall(makefolder, "JomHUB_Configs") end
        if ll1lI1I11lII then
            local I1IIl11Il1Il, lIl1ll1lI1Il = pcall(function() return II1II11IlI1l:JSONEncode(l11ll11l1I1l) end)
            if I1IIl11Il1Il then pcall(writefile, "JomHUB_Configs/"..name..".json", lIl1ll1lI1Il) end
            pcall(writefile, "JomHUB_Configs/JomHubMobile_autoload.txt", name)
        else
            pcall(writefile, "JomHUB_Configs/JomHubMobile_autoload.txt", "")
        end
    end
end

local llll1111Il1l = lIIIlIlIIIll:CreateTab("Main")
llll1111Il1l:CreateSection("General Settings")
llll1111Il1l:CreateDropdown("Farm Position", {"Above", "Behind"}, l11ll11l1I1l["\x66\x61\x72\x6d\x50\x6f\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x66\x61\x72\x6d\x50\x6f\x73"] = lI111l1lII1l end)
llll1111Il1l:CreateSlider("Distance", 0, 10, l11ll11l1I1l["\x66\x61\x72\x6d\x44\x69\x73\x74\x61\x6e\x63\x65"], function(lI111l1lII1l) l11ll11l1I1l["\x66\x61\x72\x6d\x44\x69\x73\x74\x61\x6e\x63\x65"] = lI111l1lII1l end)
local l1I111III1ll = {"Thief", "ThiefBoss", "Monkey", "MonkeyBoss", "DesertBandit", "DesertBoss", "FrostRogue", "SnowBoss", "Sorcerer", "PandaMiniBoss", "Hollow", "StrongSorcerer", "Curse", "Slime", "AcademyTeacher", "Swordsman", "Quincy", "Ninja", "ArenaFighter"}
llll1111Il1l:CreateDropdown("Select Mob", l1I111III1ll, l11ll11l1I1l["\x73\x65\x6c\x65\x63\x74\x65\x64\x4d\x6f\x62"], function(lI111l1lII1l) l11ll11l1I1l["\x73\x65\x6c\x65\x63\x74\x65\x64\x4d\x6f\x62"] = lI111l1lII1l end)
llll1111Il1l:CreateToggle("Enable Auto Farm Mob", l11ll11l1I1l["\x41\x75\x74\x6f\x46\x61\x72\x6d\x41\x63\x74\x69\x76\x65"], function(lI111l1lII1l) l11ll11l1I1l["\x41\x75\x74\x6f\x46\x61\x72\x6d\x41\x63\x74\x69\x76\x65"] = lI111l1lII1l; saveConfig("AutoFarmMob", lI111l1lII1l) end)

llll1111Il1l:CreateSection("Weapons Setup")
llll1111Il1l:CreateToggle("Auto Equip Melee", l11ll11l1I1l["\x61\x75\x74\x6f\x4d\x65\x6c\x65\x65"], function(lI111l1lII1l) l11ll11l1I1l["\x61\x75\x74\x6f\x4d\x65\x6c\x65\x65"] = lI111l1lII1l end)
llll1111Il1l:CreateToggle("Auto Equip Sword", l11ll11l1I1l["\x61\x75\x74\x6f\x53\x77\x6f\x72\x64"], function(lI111l1lII1l) l11ll11l1I1l["\x61\x75\x74\x6f\x53\x77\x6f\x72\x64"] = lI111l1lII1l end)
llll1111Il1l:CreateToggle("Auto Equip Fruit", l11ll11l1I1l["\x61\x75\x74\x6f\x46\x72\x75\x69\x74"], function(lI111l1lII1l) l11ll11l1I1l["\x61\x75\x74\x6f\x46\x72\x75\x69\x74"] = lI111l1lII1l end)

local llI11lI1Ill1 = lIIIlIlIIIll:CreateTab("COMBO")
llI11lI1Ill1:CreateSection("Melee Skills")
llI11lI1Ill1:CreateMultiDropdown("Auto Melee Skills", {"Skill Z", "Skill X", "Skill C", "Skill V", "Skill F"}, l11ll11l1I1l["\x61\x75\x74\x6f\x4d\x65\x6c\x65\x65\x53\x6b\x69\x6c\x6c\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x61\x75\x74\x6f\x4d\x65\x6c\x65\x65\x53\x6b\x69\x6c\x6c\x73"] = lI111l1lII1l end)
llI11lI1Ill1:CreateSection("Sword Skills")
llI11lI1Ill1:CreateMultiDropdown("Auto Sword Skills", {"Skill Z", "Skill X", "Skill C", "Skill V", "Skill F"}, l11ll11l1I1l["\x61\x75\x74\x6f\x53\x77\x6f\x72\x64\x53\x6b\x69\x6c\x6c\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x61\x75\x74\x6f\x53\x77\x6f\x72\x64\x53\x6b\x69\x6c\x6c\x73"] = lI111l1lII1l end)
llI11lI1Ill1:CreateSection("Fruit Skills")
llI11lI1Ill1:CreateMultiDropdown("Auto Fruit Skills", {"Skill Z", "Skill X", "Skill C", "Skill V", "Skill F"}, l11ll11l1I1l["\x61\x75\x74\x6f\x46\x72\x75\x69\x74\x53\x6b\x69\x6c\x6c\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x61\x75\x74\x6f\x46\x72\x75\x69\x74\x53\x6b\x69\x6c\x6c\x73"] = lI111l1lII1l end)

local lllI1I1Il1lI = lIIIlIlIIIll:CreateTab("FARM")
lllI1I1Il1lI:CreateSection("Auto Level")
lllI1I1Il1lI:CreateToggle("Enable Auto Level", l11ll11l1I1l["\x41\x75\x74\x6f\x4c\x65\x76\x65\x6c\x41\x63\x74\x69\x76\x65"], function(lI111l1lII1l) l11ll11l1I1l["\x41\x75\x74\x6f\x4c\x65\x76\x65\x6c\x41\x63\x74\x69\x76\x65"] = lI111l1lII1l; saveConfig("AutoLevel", lI111l1lII1l) end)
lllI1I1Il1lI:CreateSection("Auto Farm Title")
local I11IIlI111II = {"Collector", "Hoarder", "Treasure Hunter", "Golden Tyrant", "Lucky Novice", "Fortune Seeker", "Lucky Star", "Blessed One", "The Chosen One", "Blessed Sovereign", "Destiny Marked", "Celestial Favor", "Blade Master", "Honored One", "Curse King", "Shadow Monarch", "Manipulator", "King of Beginning", "Living Weapon", "Eminence in Shadow", "Vampire King", "Soul Reaper", "Strongest Sorcerer", "Disgraced One", "Demon Lord", "Golden King", "Demon King", "King of Shadows", "The One", "Blade Sovereign", "Astral Empress", "Transcendent Being", "Corrupt Tyrant", "Battlefield Warlord", "Eminence Incarnate", "Void Empress"}
lllI1I1Il1lI:CreateDropdown("Select Title", I11IIlI111II, l11ll11l1I1l["\x73\x65\x6c\x65\x63\x74\x65\x64\x54\x69\x74\x6c\x65"], function(lI111l1lII1l) l11ll11l1I1l["\x73\x65\x6c\x65\x63\x74\x65\x64\x54\x69\x74\x6c\x65"] = lI111l1lII1l end)
lllI1I1Il1lI:CreateToggle("Auto Farm Title", l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x54\x69\x74\x6c\x65"], function(lI111l1lII1l) l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x54\x69\x74\x6c\x65"] = lI111l1lII1l; saveConfig("AutoFarmTitle", lI111l1lII1l) end)
lllI1I1Il1lI:CreateToggle("Hop If No Boss", l11ll11l1I1l["\x68\x6f\x70\x46\x6f\x72\x54\x69\x74\x6c\x65"], function(lI111l1lII1l) l11ll11l1I1l["\x68\x6f\x70\x46\x6f\x72\x54\x69\x74\x6c\x65"] = lI111l1lII1l; saveConfig("AutoFarmTitle", l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x54\x69\x74\x6c\x65"]) end)

lllI1I1Il1lI:CreateSection("Auto Farm Items")
lllI1I1Il1lI:CreateMultiDropdown("Common", {"Wood", "Common Chest"}, l11ll11l1I1l["\x66\x61\x72\x6d\x43\x6f\x6d\x6d\x6f\x6e"], function(lI111l1lII1l) l11ll11l1I1l["\x66\x61\x72\x6d\x43\x6f\x6d\x6d\x6f\x6e"] = lI111l1lII1l end)
lllI1I1Il1lI:CreateMultiDropdown("Rare", {"Energy Core", "Iron", "Rare Chest", "Haki Color Reroll"}, l11ll11l1I1l["\x66\x61\x72\x6d\x52\x61\x72\x65"], function(lI111l1lII1l) l11ll11l1I1l["\x66\x61\x72\x6d\x52\x61\x72\x65"] = lI111l1lII1l end)
lllI1I1Il1lI:CreateMultiDropdown("Epic", {"Abyss Edge", "Awakened Cursed Finger", "Black Frost", "Boss Key", "Boss Ticket", "Broken Sword", "Cursed Finger", "Divine Fragment", "Dungeon Key", "Dungeon Token", "Epic Chest", "Flash Impact", "Heart", "Illusion Prism", "Limitless Key", "Limitless Ring", "Malevolent Key", "Mirage Pen", "Monarch Core", "Obsidian", "Race Reroll", "Reversal Pulse", "Sage Pulse", "Slime Shard", "Soul Fragment", "Throne Remnant", "Trait Reroll", "Umbral Capsule", "Vessel Ring", "Void Fragment", "Worthiness Fragment", "Wyrm Brand"}, l11ll11l1I1l["\x66\x61\x72\x6d\x45\x70\x69\x63"], function(lI111l1lII1l) l11ll11l1I1l["\x66\x61\x72\x6d\x45\x70\x69\x63"] = lI111l1lII1l end)
lllI1I1Il1lI:CreateMultiDropdown("Legendary", {"Ancient Shard", "Blue Singularity", "Calamity Seal", "Clan Reroll", "Cursed Talisman", "Dark Ring", "Dismantle Fang", "Divergent Pulse", "Energy Shard", "Golden Essence", "Infinity Core", "Jade Tablet", "Legendary Chest", "Malevolent Soul", "Monarch Essence", "Mythril", "Radiant Core", "Reiatsu Core", "Sacred Bow", "Shadow Essence", "Silver Requiem", "Six Eye", "Slime Remnant", "Soul Amulet", "Spiritual Core", "Tempest Seal", "Void Seed"}, l11ll11l1I1l["\x66\x61\x72\x6d\x4c\x65\x67\x65\x6e\x64\x61\x72\x79"], function(lI111l1lII1l) l11ll11l1I1l["\x66\x61\x72\x6d\x4c\x65\x67\x65\x6e\x64\x61\x72\x79"] = lI111l1lII1l end)
lllI1I1Il1lI:CreateMultiDropdown("Mythical", {"Adamantite", "Atomic Core", "Blood Ring", "Casull", "Conqueror Fragment", "Crimson Heart", "Cursed Flesh", "Imperial Seal", "Infinity Essence", "Kamish Dagger", "Mythical Chest", "Phantasm Core", "Pink Gem", "Shadow Crystal", "Shadow Heart", "Slime Core", "Soul Flame"}, l11ll11l1I1l["\x66\x61\x72\x6d\x4d\x79\x74\x68\x69\x63\x61\x6c"], function(lI111l1lII1l) l11ll11l1I1l["\x66\x61\x72\x6d\x4d\x79\x74\x68\x69\x63\x61\x6c"] = lI111l1lII1l end)
lllI1I1Il1lI:CreateMultiDropdown("Secret", {"Aura Crate", "Cosmetic Crate", "Secret Chest"}, l11ll11l1I1l["\x66\x61\x72\x6d\x53\x65\x63\x72\x65\x74"], function(lI111l1lII1l) l11ll11l1I1l["\x66\x61\x72\x6d\x53\x65\x63\x72\x65\x74"] = lI111l1lII1l end)
lllI1I1Il1lI:CreateToggle("Auto Farm Items", l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x49\x74\x65\x6d\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x49\x74\x65\x6d\x73"] = lI111l1lII1l; saveConfig("AutoFarmItems", lI111l1lII1l) end)
lllI1I1Il1lI:CreateSlider("Switch Time (Sec)", 10, 600, l11ll11l1I1l["\x69\x74\x65\x6d\x46\x61\x72\x6d\x44\x75\x72\x61\x74\x69\x6f\x6e"], function(lI111l1lII1l) l11ll11l1I1l["\x69\x74\x65\x6d\x46\x61\x72\x6d\x44\x75\x72\x61\x74\x69\x6f\x6e"] = lI111l1lII1l end)

local llIl111l1ll1 = lIIIlIlIIIll:CreateTab("BOSS")
llIl111l1ll1:CreateSection("Boss Hunt")

llIl111l1ll1:CreateDropdown("Select Boss", IllI11I11l1I, "None", function(lI111l1lII1l)
    l11ll11l1I1l["\x73\x65\x6c\x65\x63\x74\x65\x64\x42\x6f\x73\x73"] = lI111l1lII1l
    print("Selected Boss:", lI111l1lII1l)
end)

llIl111l1ll1:CreateToggle("Auto Kill Boss", l11ll11l1I1l["\x41\x75\x74\x6f\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"], function(lI111l1lII1l)
    l11ll11l1I1l["\x41\x75\x74\x6f\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] = lI111l1lII1l
    print("Auto Boss set to:", lI111l1lII1l)
    saveConfig("AutoBoss", lI111l1lII1l)
end)
llIl111l1ll1:CreateToggle("Auto Kill All Bosses", l11ll11l1I1l["\x41\x75\x74\x6f\x41\x6c\x6c\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"], function(lI111l1lII1l)
    l11ll11l1I1l["\x41\x75\x74\x6f\x41\x6c\x6c\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] = lI111l1lII1l
    print("Auto All Bosses set to:", lI111l1lII1l)
    saveConfig("AutoAllBosses", lI111l1lII1l)
end)
llIl111l1ll1:CreateToggle("Auto Hop (All Bosses)", l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x41\x6c\x6c\x42\x6f\x73\x73\x65\x73"], function(lI111l1lII1l)
    l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x41\x6c\x6c\x42\x6f\x73\x73\x65\x73"] = lI111l1lII1l
    saveConfig("AutoHopAllBosses", lI111l1lII1l)
end)

llIl111l1ll1:CreateSection("Auto Pity System")
local IlIl1IIl1lI1 = {"AtomicBoss", "TrueAizenBoss", "AnosBoss", "RimuruBoss", "StrongestofTodayBoss", "StrongestinHistoryBoss", "SaberBoss", "QinShiBoss", "IchigoBoss", "GilgameshBoss", "BlessedMaidenBoss", "SaberAlterBoss"}
llIl111l1ll1:CreateMultiDropdown("1. Target Boss:", IlIl1IIl1lI1, l11ll11l1I1l["\x70\x69\x74\x79\x42\x75\x69\x6c\x64\x65\x72\x42\x6f\x73\x73\x65\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x70\x69\x74\x79\x42\x75\x69\x6c\x64\x65\x72\x42\x6f\x73\x73\x65\x73"] = lI111l1lII1l end)
llIl111l1ll1:CreateDropdown("2. Pity Target", IllI11I11l1I, l11ll11l1I1l["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"] = lI111l1lII1l end)
llIl111l1ll1:CreateDropdown("3. Difficulty", {"Normal", "Medium", "Hard", "Extreme"}, l11ll11l1I1l["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x44\x69\x66\x66"], function(lI111l1lII1l) l11ll11l1I1l["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x44\x69\x66\x66"] = lI111l1lII1l end)
II111I1I11Il = llIl111l1ll1:CreateLabel("Current Pity: " .. (_G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] or 0) .. "/25", IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"])
llIl111l1ll1:CreateToggle("Start Auto Pity", l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"], function(lI111l1lII1l) 
    l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"] = lI111l1lII1l 
    saveConfig("AutoPity", lI111l1lII1l)
    if not lI111l1lII1l and not l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"] then updatePity(0) end
end)
llIl111l1ll1:CreateToggle("START FULLY AUTOMATED PITY (HOP)", l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"], function(lI111l1lII1l) 
    l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"] = lI111l1lII1l 
    saveConfig("AutoHopPity", lI111l1lII1l)
    if not lI111l1lII1l and not l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"] then updatePity(0) end
end)

local IllI1ll11l1I = lIIIlIlIIIll:CreateTab("DUNGEON")
IllI1ll11l1I:CreateSection("Dungeon Settings")
IllI1ll11l1I:CreateDropdown("Dungeon Type", {"CidDungeon", "RuneDungeon", "DoubleDungeon", "BossRush"}, l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x54\x79\x70\x65"], function(lI111l1lII1l) l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x54\x79\x70\x65"] = lI111l1lII1l end)
IllI1ll11l1I:CreateDropdown("Difficulty", {"Easy", "Medium", "Hard", "Extreme"}, l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x44\x69\x66\x66"], function(lI111l1lII1l) l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x44\x69\x66\x66"] = lI111l1lII1l end)
IllI1ll11l1I:CreateDropdown("Dungeon Pos", {"Above", "Behind"}, l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x50\x6f\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x50\x6f\x73"] = lI111l1lII1l end)
IllI1ll11l1I:CreateToggle("Auto Dungeon", l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"], function(lI111l1lII1l) 
    l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] = lI111l1lII1l 
    saveConfig("SailorPieceMobile_Dungeon", lI111l1lII1l)
end)

IllI1ll11l1I:CreateSection("Infinite Tower")
IllI1ll11l1I:CreateDropdown("Tower Pos", {"Above", "Behind"}, l11ll11l1I1l["\x69\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72\x50\x6f\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x69\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72\x50\x6f\x73"] = lI111l1lII1l end)
IllI1ll11l1I:CreateToggle("Auto Infinite Tower", l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"], function(lI111l1lII1l) 
    l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] = lI111l1lII1l 
    saveConfig("SailorPieceMobile_InfiniteTower", lI111l1lII1l)
end)

local III1llIlI1lI = lIIIlIlIIIll:CreateTab("AFK")
III1llIlI1lI:CreateSection("Multi-Island AFK Farm")

local l1lIl1lll1Il = {}
for name, _ in pairs(IIllIl1Il1l1) do
    table["\x69\x6e\x73\x65\x72\x74"](l1lIl1lll1Il, name)
end
table["\x73\x6f\x72\x74"](l1lIl1lll1Il)

III1llIlI1lI:CreateMultiDropdown("Select Islands", l1lIl1lll1Il, l11ll11l1I1l["\x61\x66\x6b\x49\x73\x6c\x61\x6e\x64\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x61\x66\x6b\x49\x73\x6c\x61\x6e\x64\x73"] = lI111l1lII1l end)
III1llIlI1lI:CreateToggle("Start AFK Farm", l11ll11l1I1l["\x61\x66\x6b\x4d\x6f\x64\x65\x41\x63\x74\x69\x76\x65"], function(lI111l1lII1l) 
    l11ll11l1I1l["\x61\x66\x6b\x4d\x6f\x64\x65\x41\x63\x74\x69\x76\x65"] = lI111l1lII1l
    saveConfig("AFKMode", lI111l1lII1l) 
end)

local I11IIIIl11II = lIIIlIlIIIll:CreateTab("MISC")
I11IIIIl11II:CreateSection("Auto Summon")
local llI1I11lI1lI = {
    "SaberBoss", "QinShiBoss", "IchigoBoss", "GilgameshBoss", "GojoBoss",
    "BlessedMaidenBoss", "SaberAlterBoss", "AtomicBoss", "TrueAizenBoss",
    "AnosBoss", "RimuruBoss", "StrongestofTodayBoss", "StrongestinHistoryBoss"
}
I11IIIIl11II:CreateMultiDropdown("Summon Targets", llI1I11lI1lI, l11ll11l1I1l["\x73\x75\x6d\x6d\x6f\x6e\x54\x61\x72\x67\x65\x74\x73"], function(lI111l1lII1l) l11ll11l1I1l["\x73\x75\x6d\x6d\x6f\x6e\x54\x61\x72\x67\x65\x74\x73"] = lI111l1lII1l end)
I11IIIIl11II:CreateDropdown("Difficulty", {"Normal", "Medium", "Hard", "Extreme"}, l11ll11l1I1l["\x73\x75\x6d\x6d\x6f\x6e\x44\x69\x66\x66"], function(lI111l1lII1l) l11ll11l1I1l["\x73\x75\x6d\x6d\x6f\x6e\x44\x69\x66\x66"] = lI111l1lII1l end)
I11IIIIl11II:CreateToggle("Auto Summon Boss", l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e"], function(lI111l1lII1l) 
    l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e"] = lI111l1lII1l 
    saveConfig("AutoSummon", lI111l1lII1l)
end)

I11IIIIl11II:CreateSection("Config Management")
I11IIIIl11II:CreateButton("Clear / Delete Config", function()
    local ll1lI1lII1II = false
    if delfolder then
        local I1IIl11Il1Il = pcall(function() delfolder("JomHUB_Configs") end)
        if I1IIl11Il1Il then ll1lI1lII1II = true end
    end
    if not ll1lI1lII1II and delfile and listfiles then
        pcall(function()
            for _, file in ipairs(listfiles("JomHUB_Configs")) do
                pcall(delfile, file)
            end
        end)
    end
    
     
    if writefile then
        pcall(function()
            if not isfolder("JomHUB_Configs") then makefolder("JomHUB_Configs") end
            writefile("JomHUB_Configs/JomHubMobile_autoload.txt", "")
            writefile("JomHUB_Configs/SailorPieceMobile_autoload.txt", "")
            writefile("JomHUB_Configs/SailorPiece_autoload.txt", "")
        end)
    end
end)

local I11l1I1l1lII = lIIIlIlIIIll:CreateTab("SETTING")
I11l1I1l1lII:CreateSection("Performance Optimization")
I11l1I1l1lII:CreateButton("Extreme FPS Boost (Map)", function()
    local l1ll1lI1llII = game:GetService("Lighting")
    l1ll1lI1llII["\x47\x6c\x6f\x62\x61\x6c\x53\x68\x61\x64\x6f\x77\x73"] = false
    l1ll1lI1llII["\x46\x6f\x67\x45\x6e\x64"] = 9e9
    pcall(function() settings()["\x52\x65\x6e\x64\x65\x72\x69\x6e\x67"]["\x51\x75\x61\x6c\x69\x74\x79\x4c\x65\x76\x65\x6c"] = Enum["\x51\x75\x61\x6c\x69\x74\x79\x4c\x65\x76\x65\x6c"]["\x4c\x65\x76\x65\x6c\x30\x31"] end)
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            v["\x4d\x61\x74\x65\x72\x69\x61\x6c"] = Enum["\x4d\x61\x74\x65\x72\x69\x61\x6c"]["\x53\x6d\x6f\x6f\x74\x68\x50\x6c\x61\x73\x74\x69\x63"]
            v["\x52\x65\x66\x6c\x65\x63\x74\x61\x6e\x63\x65"] = 0
        elseif v:IsA("Decal") or v:IsA("Texture") then
            v["\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v["\x45\x6e\x61\x62\x6c\x65\x64"] = false
        end
    end
end)
I11l1I1l1lII:CreateButton("Disable Shadows", function()
    game:GetService("Lighting")["\x47\x6c\x6f\x62\x61\x6c\x53\x68\x61\x64\x6f\x77\x73"] = false
end)
I11l1I1l1lII:CreateButton("Full Bright Mode", function()
    game:GetService("Lighting")["\x42\x72\x69\x67\x68\x74\x6e\x65\x73\x73"] = 2
    game:GetService("Lighting")["\x43\x6c\x6f\x63\x6b\x54\x69\x6d\x65"] = 14
    game:GetService("Lighting")["\x46\x6f\x67\x45\x6e\x64"] = 100000
    game:GetService("Lighting")["\x47\x6c\x6f\x62\x61\x6c\x53\x68\x61\x64\x6f\x77\x73"] = false
    game:GetService("Lighting")["\x4f\x75\x74\x64\x6f\x6f\x72\x41\x6d\x62\x69\x65\x6e\x74"] = Color3["\x66\x72\x6f\x6d\x52\x47\x42"](128, 128, 128)
end)

 
 
 
local I11l11l1I1l1 = Instance["\x6e\x65\x77"]("Frame")
I11l11l1I1l1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 250, 0, 100)
I11l11l1I1l1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0.5, 0, 0.5, 0)
I11l11l1I1l1["\x41\x6e\x63\x68\x6f\x72\x50\x6f\x69\x6e\x74"] = Vector2["\x6e\x65\x77"](0.5, 0.5)
I11l11l1I1l1["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x42\x47"]
I11l11l1I1l1["\x42\x6f\x72\x64\x65\x72\x53\x69\x7a\x65\x50\x69\x78\x65\x6c"] = 0
I11l11l1I1l1["\x5a\x49\x6e\x64\x65\x78"] = 200
I11l11l1I1l1["\x50\x61\x72\x65\x6e\x74"] = l1l1Il111lIl
round(I11l11l1I1l1, 8)

local IlIlI1Ill1I1 = createLabel(I11l11l1I1l1, "JOMHUB", Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x43\x65\x6e\x74\x65\x72"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d\x42\x6f\x6c\x64"], 24, IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"])
IlIlI1Ill1I1["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 30); IlIlI1Ill1I1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 0, 0, 15); IlIlI1Ill1I1["\x5a\x49\x6e\x64\x65\x78"] = 201

local I1lIIl1lIIlI = createLabel(I11l11l1I1l1, "Initializing...", Enum["\x54\x65\x78\x74\x58\x41\x6c\x69\x67\x6e\x6d\x65\x6e\x74"]["\x43\x65\x6e\x74\x65\x72"], Enum["\x46\x6f\x6e\x74"]["\x47\x6f\x74\x68\x61\x6d"], 12, IIIlIl1ll1ll["\x54\x65\x78\x74"])
I1lIIl1lIIlI["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](1, 0, 0, 20); I1lIIl1lIIlI["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0, 0, 0, 45); I1lIIl1lIIlI["\x5a\x49\x6e\x64\x65\x78"] = 201

local I1I111I1l111 = Instance["\x6e\x65\x77"]("Frame")
I1I111I1l111["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0.8, 0, 0, 6); I1I111I1l111["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] = UDim2["\x6e\x65\x77"](0.1, 0, 0, 75); I1I111I1l111["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x54\x6f\x70\x42\x61\x72"]; I1I111I1l111["\x42\x6f\x72\x64\x65\x72\x53\x69\x7a\x65\x50\x69\x78\x65\x6c"] = 0; I1I111I1l111["\x5a\x49\x6e\x64\x65\x78"] = 201; I1I111I1l111["\x50\x61\x72\x65\x6e\x74"] = I11l11l1I1l1; round(I1I111I1l111, 3)

local I1II1lII1I1l = Instance["\x6e\x65\x77"]("Frame")
I1II1lII1I1l["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](0, 0, 1, 0); I1II1lII1I1l["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x43\x6f\x6c\x6f\x72\x33"] = IIIlIl1ll1ll["\x41\x63\x63\x65\x6e\x74"]; I1II1lII1I1l["\x42\x6f\x72\x64\x65\x72\x53\x69\x7a\x65\x50\x69\x78\x65\x6c"] = 0; I1II1lII1I1l["\x5a\x49\x6e\x64\x65\x78"] = 202; I1II1lII1I1l["\x50\x61\x72\x65\x6e\x74"] = I1I111I1l111; round(I1II1lII1I1l, 3)

task["\x73\x70\x61\x77\x6e"](function()
    local IIl11I111I11 = {
        {["\x74"] = "Hooking Game Engine...", ["\x70"] = 0.3, ["\x64"] = 0.6},
        {["\x74"] = "LOADING ASSETS...", ["\x70"] = 0.6, ["\x64"] = 0.7},
        {["\x74"] = "Bypassing Anti-Cheat...", ["\x70"] = 0.85, ["\x64"] = 0.6},
        {["\x74"] = "Initializing UI...", ["\x70"] = 1, ["\x64"] = 0.5}
    }
    for _, I1IIl11Il1Il in ipairs(IIl11I111I11) do
        if I1lIIl1lIIlI then I1lIIl1lIIlI["\x54\x65\x78\x74"] = I1IIl11Il1Il["\x74"] end
        if I1II1lII1I1l then l1lI1lIIIl1l:Create(I1II1lII1I1l, TweenInfo["\x6e\x65\x77"](I1IIl11Il1Il["\x64"]), {["\x53\x69\x7a\x65"] = UDim2["\x6e\x65\x77"](I1IIl11Il1Il["\x70"], 0, 1, 0)}):Play() end
        task["\x77\x61\x69\x74"](I1IIl11Il1Il["\x64"])
    end
    if I1lIIl1lIIlI then I1lIIl1lIIlI["\x54\x65\x78\x74"] = "Completed!" end
    task["\x77\x61\x69\x74"](0.3)
    if I11l11l1I1l1 then
        l1lI1lIIIl1l:Create(I11l11l1I1l1, TweenInfo["\x6e\x65\x77"](0.5), {["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1}):Play()
        l1lI1lIIIl1l:Create(IlIlI1Ill1I1, TweenInfo["\x6e\x65\x77"](0.5), {["\x54\x65\x78\x74\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1}):Play()
        l1lI1lIIIl1l:Create(I1lIIl1lIIlI, TweenInfo["\x6e\x65\x77"](0.5), {["\x54\x65\x78\x74\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1}):Play()
        l1lI1lIIIl1l:Create(I1I111I1l111, TweenInfo["\x6e\x65\x77"](0.5), {["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1}):Play()
        l1lI1lIIIl1l:Create(I1II1lII1I1l, TweenInfo["\x6e\x65\x77"](0.5), {["\x42\x61\x63\x6b\x67\x72\x6f\x75\x6e\x64\x54\x72\x61\x6e\x73\x70\x61\x72\x65\x6e\x63\x79"] = 1}):Play()
        task["\x77\x61\x69\x74"](0.5)
        I11l11l1I1l1:Destroy()
    end
    if l1I1l1Il1II1 then l1I1l1Il1II1["\x56\x69\x73\x69\x62\x6c\x65"] = true end
end)

 
 
 
local Il111Il1llII = {
    { ["\x4c\x65\x76\x65\x6c"] = 1, ["\x51\x75\x65\x73\x74"] = "QuestNPC1", ["\x4d\x6f\x62"] = "Thief", ["\x50\x6f\x72\x74\x61\x6c"] = "Starter" },
    { ["\x4c\x65\x76\x65\x6c"] = 100, ["\x51\x75\x65\x73\x74"] = "QuestNPC2", ["\x4d\x6f\x62"] = "ThiefBoss", ["\x50\x6f\x72\x74\x61\x6c"] = "Starter" },
    { ["\x4c\x65\x76\x65\x6c"] = 250, ["\x51\x75\x65\x73\x74"] = "QuestNPC3", ["\x4d\x6f\x62"] = "Monkey", ["\x50\x6f\x72\x74\x61\x6c"] = "Jungle" },
    { ["\x4c\x65\x76\x65\x6c"] = 500, ["\x51\x75\x65\x73\x74"] = "QuestNPC4", ["\x4d\x6f\x62"] = "MonkeyBoss", ["\x50\x6f\x72\x74\x61\x6c"] = "Jungle" },
    { ["\x4c\x65\x76\x65\x6c"] = 750, ["\x51\x75\x65\x73\x74"] = "QuestNPC5", ["\x4d\x6f\x62"] = "DesertBandit", ["\x50\x6f\x72\x74\x61\x6c"] = "Desert" },
    { ["\x4c\x65\x76\x65\x6c"] = 1000, ["\x51\x75\x65\x73\x74"] = "QuestNPC6", ["\x4d\x6f\x62"] = "DesertBoss", ["\x50\x6f\x72\x74\x61\x6c"] = "Desert" },
    { ["\x4c\x65\x76\x65\x6c"] = 1500, ["\x51\x75\x65\x73\x74"] = "QuestNPC7", ["\x4d\x6f\x62"] = "FrostRogue", ["\x50\x6f\x72\x74\x61\x6c"] = "Snow" },
    { ["\x4c\x65\x76\x65\x6c"] = 2000, ["\x51\x75\x65\x73\x74"] = "QuestNPC8", ["\x4d\x6f\x62"] = "SnowBoss", ["\x50\x6f\x72\x74\x61\x6c"] = "Snow" },
    { ["\x4c\x65\x76\x65\x6c"] = 3000, ["\x51\x75\x65\x73\x74"] = "QuestNPC9", ["\x4d\x6f\x62"] = "Sorcerer", ["\x50\x6f\x72\x74\x61\x6c"] = "Shibuya" },
    { ["\x4c\x65\x76\x65\x6c"] = 4000, ["\x51\x75\x65\x73\x74"] = "QuestNPC10", ["\x4d\x6f\x62"] = "PandaMiniBoss", ["\x50\x6f\x72\x74\x61\x6c"] = "Shibuya" },
    { ["\x4c\x65\x76\x65\x6c"] = 5000, ["\x51\x75\x65\x73\x74"] = "QuestNPC11", ["\x4d\x6f\x62"] = "Hollow", ["\x50\x6f\x72\x74\x61\x6c"] = "HollowIsland" },
    { ["\x4c\x65\x76\x65\x6c"] = 6250, ["\x51\x75\x65\x73\x74"] = "QuestNPC12", ["\x4d\x6f\x62"] = "StrongSorcerer", ["\x50\x6f\x72\x74\x61\x6c"] = "Shinjuku" },
    { ["\x4c\x65\x76\x65\x6c"] = 7000, ["\x51\x75\x65\x73\x74"] = "QuestNPC13", ["\x4d\x6f\x62"] = "Curse", ["\x50\x6f\x72\x74\x61\x6c"] = "Shinjuku" },
    { ["\x4c\x65\x76\x65\x6c"] = 8000, ["\x51\x75\x65\x73\x74"] = "QuestNPC14", ["\x4d\x6f\x62"] = "Slime", ["\x50\x6f\x72\x74\x61\x6c"] = "Slime" },
    { ["\x4c\x65\x76\x65\x6c"] = 9000, ["\x51\x75\x65\x73\x74"] = "QuestNPC15", ["\x4d\x6f\x62"] = "AcademyTeacher", ["\x50\x6f\x72\x74\x61\x6c"] = "Academy" },
    { ["\x4c\x65\x76\x65\x6c"] = 10000, ["\x51\x75\x65\x73\x74"] = "QuestNPC16", ["\x4d\x6f\x62"] = "Swordsman", ["\x50\x6f\x72\x74\x61\x6c"] = "Judgement" },
    { ["\x4c\x65\x76\x65\x6c"] = 10750, ["\x51\x75\x65\x73\x74"] = "QuestNPC17", ["\x4d\x6f\x62"] = "Quincy", ["\x50\x6f\x72\x74\x61\x6c"] = "SoulDominion" },
    { ["\x4c\x65\x76\x65\x6c"] = 11500, ["\x51\x75\x65\x73\x74"] = "QuestNPC18", ["\x4d\x6f\x62"] = "Ninja", ["\x50\x6f\x72\x74\x61\x6c"] = "Ninja" },
    { ["\x4c\x65\x76\x65\x6c"] = 12000, ["\x51\x75\x65\x73\x74"] = "QuestNPC19", ["\x4d\x6f\x62"] = "ArenaFighter", ["\x50\x6f\x72\x74\x61\x6c"] = "Lawless" }
}

local function parseLevel(lI111l1lII1l)
    if type(lI111l1lII1l) == "number" then return lI111l1lII1l end
    if type(lI111l1lII1l) == "string" then
        local I1IlIl11I11l = string["\x6d\x61\x74\x63\x68"](lI111l1lII1l, "%d+")
        if I1IlIl11I11l then return tonumber(I1IlIl11I11l) end
    end
    return 1
end

local function getCurrentLevel()
    local IlIl1l1I1Il1 = Il1IllIl1Ill:FindFirstChild("Data")
    if IlIl1l1I1Il1 and IlIl1l1I1Il1:FindFirstChild("Level") then return parseLevel(IlIl1l1I1Il1["\x4c\x65\x76\x65\x6c"]["\x56\x61\x6c\x75\x65"]) end
    local ll1lllIll1I1 = Il1IllIl1Ill:FindFirstChild("leaderstats")
    if ll1lllIll1I1 and ll1lllIll1I1:FindFirstChild("Level") then return parseLevel(ll1lllIll1I1["\x4c\x65\x76\x65\x6c"]["\x56\x61\x6c\x75\x65"]) end
    if Il1IllIl1Ill:GetAttribute("Level") then return parseLevel(Il1IllIl1Ill:GetAttribute("Level")) end
    return 1
end

local lIIl11111I1I = {
    ["\x74\x68\x69\x65\x66"] = "Starter", ["\x74\x68\x69\x65\x66\x62\x6f\x73\x73"] = "Starter",
    ["\x6d\x6f\x6e\x6b\x65\x79"] = "Jungle", ["\x6d\x6f\x6e\x6b\x65\x79\x62\x6f\x73\x73"] = "Jungle",
    ["\x64\x65\x73\x65\x72\x74\x62\x61\x6e\x64\x69\x74"] = "Desert", ["\x64\x65\x73\x65\x72\x74\x62\x6f\x73\x73"] = "Desert",
    ["\x66\x72\x6f\x73\x74\x72\x6f\x67\x75\x65"] = "Snow", ["\x73\x6e\x6f\x77\x62\x6f\x73\x73"] = "Snow", ["\x72\x61\x67\x6e\x61"] = "Snow", ["\x72\x61\x67\x6e\x61\x62\x6f\x73\x73"] = "Snow",
    ["\x6a\x69\x6e\x77\x6f\x6f\x62\x6f\x73\x73"] = "Sailor", ["\x6a\x69\x6e\x77\x6f\x6f"] = "Sailor", ["\x73\x68\x61\x64\x6f\x77\x62\x6f\x73\x73"] = "Sailor", ["\x73\x68\x61\x64\x6f\x77\x6d\x6f\x6e\x61\x72\x63\x68\x62\x6f\x73\x73"] = "Sailor",
    ["\x79\x75\x6a\x69\x62\x6f\x73\x73"] = "Shibuya", ["\x73\x75\x6b\x75\x6e\x61\x62\x6f\x73\x73"] = "Shibuya", ["\x67\x6f\x6a\x6f\x62\x6f\x73\x73"] = "Shibuya", ["\x73\x6f\x72\x63\x65\x72\x65\x72\x73\x74\x75\x64\x65\x6e\x74"] = "Shibuya", ["\x70\x61\x6e\x64\x61\x73\x6f\x72\x63\x65\x72\x65\x72"] = "Shibuya", ["\x73\x6f\x72\x63\x65\x72\x65\x72"] = "Shibuya", ["\x70\x61\x6e\x64\x61\x6d\x69\x6e\x69\x62\x6f\x73\x73"] = "Shibuya", ["\x73\x74\x72\x6f\x6e\x67\x65\x73\x74\x6f\x66\x74\x6f\x64\x61\x79\x62\x6f\x73\x73"] = "Shibuya",        
    ["\x68\x6f\x6c\x6c\x6f\x77"] = "HollowIsland", ["\x61\x69\x7a\x65\x6e\x62\x6f\x73\x73"] = "HollowIsland", ["\x61\x69\x7a\x65\x6e"] = "HollowIsland",
    ["\x74\x72\x75\x65\x61\x69\x7a\x65\x6e\x62\x6f\x73\x73"] = "SoulDominion",
    ["\x63\x75\x72\x73\x65"] = "Shinjuku", ["\x73\x74\x72\x6f\x6e\x67\x73\x6f\x72\x63\x65\x72\x65\x72"] = "Shinjuku", ["\x73\x74\x72\x6f\x6e\x67\x65\x73\x74\x69\x6e\x68\x69\x73\x74\x6f\x72\x79\x62\x6f\x73\x73"] = "Shinjuku", ["\x73\x74\x72\x6f\x6e\x67\x65\x73\x74\x6f\x66\x74\x6f\x64\x61\x79\x62\x6f\x73\x73"] = "Shinjuku",
    ["\x73\x6c\x69\x6d\x65\x77\x61\x72\x72\x69\x6f\x72"] = "Slime", ["\x73\x6c\x69\x6d\x65"] = "Slime", ["\x6d\x61\x64\x6f\x6b\x61\x62\x6f\x73\x73"] = "Valentine", ["\x6d\x61\x64\x6f\x6b\x61"] = "Valentine", ["\x72\x69\x6d\x75\x72\x75\x62\x6f\x73\x73"] = "Slime",
    ["\x61\x63\x61\x64\x65\x6d\x79\x74\x65\x61\x63\x68\x65\x72"] = "Academy", ["\x61\x6e\x6f\x73\x62\x6f\x73\x73"] = "Academy",
    ["\x73\x77\x6f\x72\x64\x73\x6d\x61\x6e"] = "Judgement", ["\x79\x61\x6d\x61\x74\x6f\x62\x6f\x73\x73"] = "Judgement", ["\x79\x61\x6d\x61\x74\x6f"] = "Judgement", ["\x61\x6c\x75\x63\x61\x72\x64\x62\x6f\x73\x73"] = "Sailor", ["\x61\x6c\x75\x63\x61\x72\x64"] = "Sailor", ["\x71\x69\x6e\x73\x68\x69\x62\x6f\x73\x73"] = "Boss",
    ["\x71\x75\x69\x6e\x63\x79"] = "SoulDominion", ["\x69\x63\x68\x69\x67\x6f\x62\x6f\x73\x73"] = "Boss",
    ["\x73\x61\x62\x65\x72\x62\x6f\x73\x73"] = "Boss", ["\x73\x61\x62\x65\x72"] = "Boss", ["\x67\x69\x6c\x67\x61\x6d\x65\x73\x68\x62\x6f\x73\x73"] = "Boss", ["\x65\x73\x63\x61\x6e\x6f\x72\x62\x6f\x73\x73"] = "Sailor",
    ["\x62\x6c\x65\x73\x73\x65\x64\x6d\x61\x69\x64\x65\x6e\x62\x6f\x73\x73"] = "Boss", ["\x73\x61\x62\x65\x72\x61\x6c\x74\x65\x72\x62\x6f\x73\x73"] = "Boss", ["\x61\x74\x6f\x6d\x69\x63\x62\x6f\x73\x73"] = "Lawless", ["\x61\x74\x6f\x6d\x69\x63"] = "Lawless", ["\x73\x74\x72\x6f\x6e\x67\x65\x73\x74\x73\x68\x69\x6e\x6f\x62\x69\x62\x6f\x73\x73"] = "Ninja",
    ["\x6e\x69\x6e\x6a\x61"] = "Ninja",
    ["\x61\x72\x65\x6e\x61\x66\x69\x67\x68\x74\x65\x72"] = "Lawless"
}

local llI1ll1IIl1I = II1llll1I1I1:WaitForChild("Remotes", 5)
local I1llII11IIIl = llI1ll1IIl1I and llI1ll1IIl1I:FindFirstChild("TeleportToPortal")
local l111l1lllll1 = II1llll1I1I1:WaitForChild("CombatSystem", 5)
local l111lIIII1l1 = l111l1lllll1 and l111l1lllll1:FindFirstChild("Remotes") and l111l1lllll1["\x52\x65\x6d\x6f\x74\x65\x73"]:FindFirstChild("RequestHit")
local l1lIllI1l1l1 = II1llll1I1I1:FindFirstChild("AbilitySystem")
local l1Il1lll1ll1 = l1lIllI1l1l1 and l1lIllI1l1l1:FindFirstChild("Remotes") and l1lIllI1l1l1["\x52\x65\x6d\x6f\x74\x65\x73"]:FindFirstChild("RequestAbility")

local lllllIl1l1I1 = II1llll1I1I1:WaitForChild("RemoteEvents", 5)
local IIl11IIl1lll = lllllIl1l1I1 and lllllIl1l1I1:FindFirstChild("QuestAccept")
local l1IlIlI1111l = lllllIl1l1I1 and lllllIl1l1I1:FindFirstChild("QuestComplete")
local II1l11l11llI = lllllIl1l1I1 and lllllIl1l1I1:FindFirstChild("QuestAbandon")

local Ill1I1111Il1 = llI1ll1IIl1I and llI1ll1IIl1I:FindFirstChild("RequestDungeonPortal")
local l1l1llI11III = llI1ll1IIl1I and llI1ll1IIl1I:FindFirstChild("DungeonWaveVote")

local l11lIllI1II1 = llI1ll1IIl1I and llI1ll1IIl1I:FindFirstChild("BossUIShow")
local l1l11l1llIII = llI1ll1IIl1I and llI1ll1IIl1I:FindFirstChild("ShowNotification")
local III11l1l1lIl = llI1ll1IIl1I and llI1ll1IIl1I:FindFirstChild("OpenInfiniteTowerUI")

if l11lIllI1II1 then
    l11lIllI1II1["\x4f\x6e\x43\x6c\x69\x65\x6e\x74\x45\x76\x65\x6e\x74"]:Connect(function(IlIl1l1I1Il1)
        if type(IlIl1l1I1Il1) == "table" and IlIl1l1I1Il1["\x70\x69\x74\x79"] ~= nil then
            local ll1lIIll111I = tonumber(IlIl1l1I1Il1["\x70\x69\x74\x79"]) or 0
            if ll1lIIll111I > _G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] or ll1lIIll111I == 0 then updatePity(ll1lIIll111I) end 
        end
    end)
end
if l1l11l1llIII then
    l1l11l1llIII["\x4f\x6e\x43\x6c\x69\x65\x6e\x74\x45\x76\x65\x6e\x74"]:Connect(function(title, IlIl1l1I1Il1)
        if type(IlIl1l1I1Il1) == "table" and IlIl1l1I1Il1["\x6d\x65\x73\x73\x61\x67\x65"] and l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] and (string["\x66\x69\x6e\x64"](IlIl1l1I1Il1["\x6d\x65\x73\x73\x61\x67\x65"], "difficulty") or string["\x66\x69\x6e\x64"](IlIl1l1I1Il1["\x6d\x65\x73\x73\x61\x67\x65"], "vote") or string["\x66\x69\x6e\x64"](IlIl1l1I1Il1["\x6d\x65\x73\x73\x61\x67\x65"], "normal")) then
            if l1l1llI11III then pcall(function() l1l1llI11III:FireServer(l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x44\x69\x66\x66"]) end) end
        end
    end)
end
if III11l1l1lIl then
    III11l1l1lIl["\x4f\x6e\x43\x6c\x69\x65\x6e\x74\x45\x76\x65\x6e\x74"]:Connect(function()
        if l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] or l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] then
            if l1l1llI11III then pcall(function() l1l1llI11III:FireServer("start") end) end
            pcall(function()
                local Il111l1Il111 = Il1IllIl1Ill:FindFirstChild("PlayerGui")
                if Il111l1Il111 then
                    local l11l1lII11II = Il111l1Il111:FindFirstChild("InfiniteTowerUI") or Il111l1Il111:FindFirstChild("TowerUI")
                    if l11l1lII11II and l11l1lII11II["\x45\x6e\x61\x62\x6c\x65\x64"] then l11l1lII11II["\x45\x6e\x61\x62\x6c\x65\x64"] = false end
                end
            end)
        end
    end)
end

local lllllIll1IIl = {"Combat", "Gojo", "Sukuna", "Qin Shi", "Yuji", "Alucard", "Strongest Of Today", "Strongest In History", "Gilgamesh", "Madoka", "Anos", "Blessed Maiden", "Saber Alter", "Strongest Shinobi", "King of heroes", "Curse king", "Limitless sorcerer", "Corrupted Excalibur", "Fists", "Brass Knuckles", "Fighting Style", "Gauntlets", "Dragon Gauntlets"}
local l11Il111I11l = {"Saber", "Katana", "Jinwoo", "Dark Blade", "Ragna", "Aizen", "Shadow", "Ichigo", "Rimuru", "Shadow Monarch", "Escanor", "True Aizen", "Yamato", "Abyssal Empress", "Atomic", "Gryphon", "Excalibur", "Sin of pride", "Solo hunter", "Manipulator", "True Manipulator", "Sword", "KatanaSword", "Cutlass", "Longsword", "Dual Katana"}
local lIlllIll11lI = {"Quake", "Invisible", "Flame", "Bomb", "Light"}

local function getWeaponsToUse()
    local II11ll1Ill1l = {}
    local lIl1IIllIlll = Il1IllIl1Ill:FindFirstChild("Backpack")
    local llI11lIllI1I = Il1IllIl1Ill["\x43\x68\x61\x72\x61\x63\x74\x65\x72"]
    local function clean(str) return string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](str, "%s+", "")) end
    local function checkList(list)
        if llI11lIllI1I then
            for _, tool in ipairs(llI11lIllI1I:GetChildren()) do
                if tool:IsA("Tool") then
                    for _, name in ipairs(list) do
                        if clean(tool["\x4e\x61\x6d\x65"]) == clean(name) then return tool end
                    end
                end
            end
        end
        if lIl1IIllIlll then
            for _, tool in ipairs(lIl1IIllIlll:GetChildren()) do
                if tool:IsA("Tool") then
                    for _, name in ipairs(list) do
                        if clean(tool["\x4e\x61\x6d\x65"]) == clean(name) then return tool end
                    end
                end
            end
        end
        return nil
    end
    if l11ll11l1I1l["\x61\x75\x74\x6f\x4d\x65\x6c\x65\x65"] then local Illllll1Il1l = checkList(lllllIll1IIl); if Illllll1Il1l then table["\x69\x6e\x73\x65\x72\x74"](II11ll1Ill1l, Illllll1Il1l) end end
    if l11ll11l1I1l["\x61\x75\x74\x6f\x53\x77\x6f\x72\x64"] then local Illllll1Il1l = checkList(l11Il111I11l); if Illllll1Il1l then table["\x69\x6e\x73\x65\x72\x74"](II11ll1Ill1l, Illllll1Il1l) end end
    if l11ll11l1I1l["\x61\x75\x74\x6f\x46\x72\x75\x69\x74"] then local Illllll1Il1l = checkList(lIlllIll11lI); if Illllll1Il1l then table["\x69\x6e\x73\x65\x72\x74"](II11ll1Ill1l, Illllll1Il1l) end end
    
    if #II11ll1Ill1l == 0 and lIl1IIllIlll then
        local lIlI1Ill1l1l = llI11lIllI1I and llI11lIllI1I:FindFirstChildOfClass("Tool") or lIl1IIllIlll:FindFirstChildOfClass("Tool")
        if lIlI1Ill1l1l then table["\x69\x6e\x73\x65\x72\x74"](II11ll1Ill1l, lIlI1Ill1l1l) end
    end
    return II11ll1Ill1l
end

local function executeAttacks(targetObj, wep)
    if not targetObj then return end
    if l111lIIII1l1 then pcall(function() l111lIIII1l1:FireServer(targetObj) end) end

    if l1Il1lll1ll1 then
        local IlII111II1I1 = l11ll11l1I1l["\x61\x75\x74\x6f\x53\x6b\x69\x6c\x6c\x73"] or {}
        if wep and typeof(wep) == "Instance" then
            local function clean(str) return string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](str, "%s+", "")) end
            local lIIll1Il1IlI = clean(wep["\x4e\x61\x6d\x65"])
            local lI1I1IIIl1Il, l1l1l1IIlI11, l11l1lIlI1ll = false, false, false
            for _, v in ipairs(lllllIll1IIl) do if clean(v) == lIIll1Il1IlI then lI1I1IIIl1Il = true break end end
            if not lI1I1IIIl1Il then for _, v in ipairs(l11Il111I11l) do if clean(v) == lIIll1Il1IlI then l1l1l1IIlI11 = true break end end end
            if not lI1I1IIIl1Il and not l1l1l1IIlI11 then for _, v in ipairs(lIlllIll11lI) do if clean(v) == lIIll1Il1IlI then l11l1lIlI1ll = true break end end end
            
            if lI1I1IIIl1Il then IlII111II1I1 = l11ll11l1I1l["\x61\x75\x74\x6f\x4d\x65\x6c\x65\x65\x53\x6b\x69\x6c\x6c\x73"] or {}
            elseif l1l1l1IIlI11 then IlII111II1I1 = l11ll11l1I1l["\x61\x75\x74\x6f\x53\x77\x6f\x72\x64\x53\x6b\x69\x6c\x6c\x73"] or {}
            elseif l11l1lIlI1ll then IlII111II1I1 = l11ll11l1I1l["\x61\x75\x74\x6f\x46\x72\x75\x69\x74\x53\x6b\x69\x6c\x6c\x73"] or {}
            end
        end
        if IlII111II1I1["Skill Z"] then pcall(function() l1Il1lll1ll1:FireServer(1) end) end
        if IlII111II1I1["Skill X"] then pcall(function() l1Il1lll1ll1:FireServer(2) end) end
        if IlII111II1I1["Skill C"] then pcall(function() l1Il1lll1ll1:FireServer(3) end) end
        if IlII111II1I1["Skill V"] then pcall(function() l1Il1lll1ll1:FireServer(4) end) end
        if IlII111II1I1["Skill F"] then pcall(function() l1Il1lll1ll1:FireServer(5) end) end
    end
end

local function getPortalForMob(mobName)
    if not mobName or mobName == "" then return nil end
    local IlII1lll1IIl = string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](mobName:gsub("%d+$", ""), "%s+", ""))
    return lIIl11111I1I[IlII1lll1IIl] or "Starter"
end

local function checkBossAlive(bName)
    local lIIIlI1II11I = I11I11I1l1ll:FindFirstChild("NPCs")
    if lIIIlI1II11I then
        local IlI1II111llI = string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](bName, "%s+", ""))
        local Il1l11III1Il = string["\x67\x73\x75\x62"](IlI1II111llI, "boss", "")
        for _, npc in ipairs(lIIIlI1II11I:GetChildren()) do
            local I1lII111lIl1 = npc["\x4e\x61\x6d\x65"]:gsub("%d+$", "")
            I1lII111lIl1 = I1lII111lIl1:gsub("_.*", "")
            local l1lll11lIlI1 = string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](I1lII111lIl1, "%s+", ""))
            if l1lll11lIlI1 == IlI1II111llI then
                local III1l1Ill11I = npc:FindFirstChild("Humanoid")
                if III1l1Ill11I and III1l1Ill11I["\x48\x65\x61\x6c\x74\x68"] > 0 then return true end
            elseif l1lll11lIlI1 == Il1l11III1Il then
                local III1l1Ill11I = npc:FindFirstChild("Humanoid")
                if III1l1Ill11I and III1l1Ill11I["\x48\x65\x61\x6c\x74\x68"] > 0 and III1l1Ill11I["\x4d\x61\x78\x48\x65\x61\x6c\x74\x68"] > 5000 then return true end
            end
        end
    end
    return false
end

local function teleportToIsland(portalName)
    if not portalName or portalName == "" then return false end
    if l11ll11l1I1l["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] == portalName then return true end

    local I1lIIlllll11 = IIllIl1Il1l1[portalName] or (portalName .. "Island")
    
    if I1llII11IIIl then
        pcall(function() I1llII11IIIl:FireServer(portalName) end)
    end

    local l1lIII1ll1II = tick()
    local II1Il1111I1I = false
    while tick() - l1lIII1ll1II < 10 do  
        local I11ll11l1lII = I11I11I1l1ll:FindFirstChild(I1lIIlllll11)
        if I11ll11l1lII then
            local IlII1l11lllI = I11ll11l1lII:FindFirstChild("Portal_" .. portalName)
            if IlII1l11lllI then
                II1Il1111I1I = true
                break
            end
        end
        task["\x77\x61\x69\x74"](0.2)
    end

    if II1Il1111I1I then
        l11ll11l1I1l["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] = portalName
        task["\x77\x61\x69\x74"](1)  
        return true
    else
        l11ll11l1I1l["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] = ""  
        return false
    end
end

local function teleportToIsland_AFK(portalName)
    if not portalName or portalName == "" then return false end

    local I1lIIlllll11 = IIllIl1Il1l1[portalName] or (portalName .. "Island")
    
    if I1llII11IIIl then
        pcall(function() I1llII11IIIl:FireServer(portalName) end)
    end

    local l1lIII1ll1II = tick()
    local II1Il1111I1I = false
    while tick() - l1lIII1ll1II < 7 do  
        local I11ll11l1lII = I11I11I1l1ll:FindFirstChild(I1lIIlllll11)
        if I11ll11l1lII then
             
            local IlII1l11lllI = I11ll11l1lII:FindFirstChild("Portal_" .. portalName)
            if IlII1l11lllI then
                II1Il1111I1I = true
                break
            end
        end
        task["\x77\x61\x69\x74"](0.1)  
    end

    if II1Il1111I1I then
        l11ll11l1I1l["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] = portalName
        task["\x77\x61\x69\x74"](0.5)  
        return true
    else
        l11ll11l1I1l["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] = ""  
        return false
    end
end

local function getFarmPosition(targetRoot, baseDistance, posType)
    local lllI1111IlI1 = targetRoot["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]
    if posType == "Above" then 
        local III111lIIl1I = lllI1111IlI1 + Vector3["\x6e\x65\x77"](0, baseDistance, 0)
        return CFrame["\x6e\x65\x77"](III111lIIl1I) * CFrame["\x41\x6e\x67\x6c\x65\x73"](math["\x72\x61\x64"](-90), 0, 0)
    else
        local l1llIIllI111 = (targetRoot["\x43\x46\x72\x61\x6d\x65"] * CFrame["\x6e\x65\x77"](0, 0, baseDistance)["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]
        return CFrame["\x6c\x6f\x6f\x6b\x41\x74"](l1llIIllI111, lllI1111IlI1)
    end
end

local function SmartTeleport(targetCFrame)
    local llI11lIllI1I = Il1IllIl1Ill["\x43\x68\x61\x72\x61\x63\x74\x65\x72"]
    local IllI1II1IIIl = llI11lIllI1I and llI11lIllI1I:FindFirstChild("HumanoidRootPart")
    if not IllI1II1IIIl then return end

    local II11lI1lIllI = { [75159314259063] = true, [99684056491472] = true, [123955125827131] = true, [96767841099256] = true }
    local llIlI1llIIII = II11lI1lIllI[game["\x50\x6c\x61\x63\x65\x49\x64"]]
    local l1l1lI11l1l1 = (game["\x50\x6c\x61\x63\x65\x49\x64"] == 138368689293913)
    
    local III1lII1III1 = 150
    if (l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] and llIlI1llIIII) or (l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] and l1l1lI11l1l1) then
        III1lII1III1 = 400  
    end

    local IllIll1lI111 = (IllI1II1IIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - targetCFrame["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x4d\x61\x67\x6e\x69\x74\x75\x64\x65"]
    if IllIll1lI111 < 50 then 
        IllI1II1IIIl["\x43\x46\x72\x61\x6d\x65"] = targetCFrame
        pcall(function() IllI1II1IIIl["\x41\x73\x73\x65\x6d\x62\x6c\x79\x4c\x69\x6e\x65\x61\x72\x56\x65\x6c\x6f\x63\x69\x74\x79"] = Vector3["\x7a\x65\x72\x6f"] end)
        return 
    end

    local llll1IlI1II1 = math["\x6d\x61\x78"](0.1, IllIll1lI111 / III1lII1III1)
    
    local llIIll1l1ll1 = IllI1II1IIIl:FindFirstChild("JomTeleportBV")
    if not llIIll1l1ll1 then
        llIIll1l1ll1 = Instance["\x6e\x65\x77"]("BodyVelocity")
        llIIll1l1ll1["\x4e\x61\x6d\x65"] = "JomTeleportBV"
        llIIll1l1ll1["\x56\x65\x6c\x6f\x63\x69\x74\x79"] = Vector3["\x7a\x65\x72\x6f"]
        llIIll1l1ll1["\x4d\x61\x78\x46\x6f\x72\x63\x65"] = Vector3["\x6e\x65\x77"](math["\x68\x75\x67\x65"], math["\x68\x75\x67\x65"], math["\x68\x75\x67\x65"])
        llIIll1l1ll1["\x50\x61\x72\x65\x6e\x74"] = IllI1II1IIIl
    end

    local II1II1IIllIl = TweenInfo["\x6e\x65\x77"](llll1IlI1II1, Enum["\x45\x61\x73\x69\x6e\x67\x53\x74\x79\x6c\x65"]["\x4c\x69\x6e\x65\x61\x72"])
    local l1IIIl1ll1II = l1lI1lIIIl1l:Create(IllI1II1IIIl, II1II1IIllIl, {["\x43\x46\x72\x61\x6d\x65"] = targetCFrame})
    
    l1IIIl1ll1II:Play()
    
    local l1lIII1ll1II = tick()
    while l1IIIl1ll1II["\x50\x6c\x61\x79\x62\x61\x63\x6b\x53\x74\x61\x74\x65"] == Enum["\x50\x6c\x61\x79\x62\x61\x63\x6b\x53\x74\x61\x74\x65"]["\x50\x6c\x61\x79\x69\x6e\x67"] do
        if not (l11ll11l1I1l["\x41\x75\x74\x6f\x46\x61\x72\x6d\x41\x63\x74\x69\x76\x65"] or l11ll11l1I1l["\x41\x75\x74\x6f\x4c\x65\x76\x65\x6c\x41\x63\x74\x69\x76\x65"] or l11ll11l1I1l["\x41\x75\x74\x6f\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] or l11ll11l1I1l["\x41\x75\x74\x6f\x41\x6c\x6c\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] or l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"] or l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"] or l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] or l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] or l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x54\x69\x74\x6c\x65"] or l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x49\x74\x65\x6d\x73"] or l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e"]) or (tick() - l1lIII1ll1II > llll1IlI1II1 + 1) then
            l1IIIl1ll1II:Cancel()
            break
        end
        task["\x77\x61\x69\x74"]()
    end
    
    if llIIll1l1ll1 then llIIll1l1ll1:Destroy() end
end

task["\x73\x70\x61\x77\x6e"](function()
    while task["\x77\x61\x69\x74"]() do
        if l11ll11l1I1l["\x61\x66\x6b\x4d\x6f\x64\x65\x41\x63\x74\x69\x76\x65"] then
            local llI11lIllI1I = Il1IllIl1Ill["\x43\x68\x61\x72\x61\x63\x74\x65\x72"]
            if not llI11lIllI1I then task["\x77\x61\x69\x74"](1); continue end
            local IllI1II1IIIl = llI11lIllI1I:FindFirstChild("HumanoidRootPart")
            local III1l1Ill11I = llI11lIllI1I:FindFirstChild("Humanoid")
            if not IllI1II1IIIl or not III1l1Ill11I or III1l1Ill11I["\x48\x65\x61\x6c\x74\x68"] <= 0 then continue end

            for _, v in pairs(llI11lIllI1I:GetDescendants()) do
                if v:IsA("BasePart") then v["\x43\x61\x6e\x43\x6f\x6c\x6c\x69\x64\x65"] = false end
            end

            local IIIIIIlI1ll1 = {}
            for name, l11I1IlI1lll in pairs(l11ll11l1I1l["\x61\x66\x6b\x49\x73\x6c\x61\x6e\x64\x73"] or {}) do
                if l11I1IlI1lll then table["\x69\x6e\x73\x65\x72\x74"](IIIIIIlI1ll1, name) end
            end
            table["\x73\x6f\x72\x74"](IIIIIIlI1ll1)

            if #IIIIIIlI1ll1 == 0 then task["\x77\x61\x69\x74"](1); continue end

            local I1IIlIl1lIII = llI11lIllI1I:GetAttribute("AfkIslandIndex") or 1
            if I1IIlIl1lIII > #IIIIIIlI1ll1 then I1IIlIl1lIII = 1 end
            local I111l1I1III1 = IIIIIIlI1ll1[I1IIlIl1lIII]

            if l11ll11l1I1l["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] ~= I111l1I1III1 then
                print("[JOMHUB AFK] Switching to island: " .. I111l1I1III1)
                local IlII1IlIllll = teleportToIsland_AFK(I111l1I1III1)
                if IlII1IlIllll then task["\x77\x61\x69\x74"](0.5) else task["\x77\x61\x69\x74"](2) end
                continue
            end

            local lIIIlI1II11I = I11I11I1l1ll:FindFirstChild("NPCs")
            local lllIlIII1111 = {}
            if lIIIlI1II11I then
                for _, npc in ipairs(lIIIlI1II11I:GetChildren()) do
                    local lI111lIlll11 = npc:FindFirstChild("Humanoid")
                    if lI111lIlll11 and lI111lIlll11["\x48\x65\x61\x6c\x74\x68"] > 0 then
                        local I1lII111lIl1 = npc["\x4e\x61\x6d\x65"]:gsub("%d+$", "")
                        I1lII111lIl1 = I1lII111lIl1:gsub("_.*", "")
                        local l1lll11lIlI1 = string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](I1lII111lIl1, "%s+", ""))
                        local ll111I1Il1l1 = string["\x67\x73\x75\x62"](l1lll11lIlI1, "boss", "")
                        
                        local IIIl1l1IlIIl = lIIl11111I1I[l1lll11lIlI1] or lIIl11111I1I[ll111I1Il1l1]
                        if IIIl1l1IlIIl == I111l1I1III1 then
                            table["\x69\x6e\x73\x65\x72\x74"](lllIlIII1111, npc)
                        end
                    end
                end
            end
            
            table["\x73\x6f\x72\x74"](lllIlIII1111, function(a, b)
                local IlIlI1III1Il = string["\x66\x69\x6e\x64"](string["\x6c\x6f\x77\x65\x72"](a["\x4e\x61\x6d\x65"]), "boss") ~= nil
                local lll111lIl11l = string["\x66\x69\x6e\x64"](string["\x6c\x6f\x77\x65\x72"](b["\x4e\x61\x6d\x65"]), "boss") ~= nil
                if IlIlI1III1Il and not lll111lIl11l then return true end
                if lll111lIl11l and not IlIlI1III1Il then return false end
                return false
            end)

            if #lllIlIII1111 == 0 then
                print("[JOMHUB AFK] Island " .. I111l1I1III1 .. " cleared. Switching to next.")
                local lIlll1lIII1l = I1IIlIl1lIII + 1
                if lIlll1lIII1l > #IIIIIIlI1ll1 then lIlll1lIII1l = 1 end
                llI11lIllI1I:SetAttribute("AfkIslandIndex", lIlll1lIII1l)
                l11ll11l1I1l["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] = ""
                task["\x77\x61\x69\x74"](1)
                continue
            end

            local II11ll1Ill1l = getWeaponsToUse()
            local IIll1ll1ll1I = #II11ll1Ill1l > 0 and II11ll1Ill1l or {false}

            local l1I11lIIII1l = lllIlIII1111[1]
            if l1I11lIIII1l and l1I11lIIII1l["\x50\x61\x72\x65\x6e\x74"] and l1I11lIIII1l:FindFirstChild("Humanoid") and l1I11lIIII1l["\x48\x75\x6d\x61\x6e\x6f\x69\x64"]["\x48\x65\x61\x6c\x74\x68"] > 0 then
                local IIIlI111lI11 = l1I11lIIII1l:FindFirstChild("HumanoidRootPart") or l1I11lIIII1l:FindFirstChildWhichIsA("BasePart")
                if IIIlI111lI11 then
                    local I11ll1IIlIII = getFarmPosition(IIIlI111lI11, l11ll11l1I1l["\x66\x61\x72\x6d\x44\x69\x73\x74\x61\x6e\x63\x65"], l11ll11l1I1l["\x66\x61\x72\x6d\x50\x6f\x73"])
                    IllI1II1IIIl["\x43\x46\x72\x61\x6d\x65"] = I11ll1IIlIII

                    for _, wep in ipairs(IIll1ll1ll1I) do
                        if wep and typeof(wep) == "Instance" and wep["\x50\x61\x72\x65\x6e\x74"] ~= llI11lIllI1I then
                            pcall(function() III1l1Ill11I:EquipTool(wep) end)
                            task["\x77\x61\x69\x74"](0.05)
                        end
                        executeAttacks(l1I11lIIII1l, wep)
                    end
                end
            end
            task["\x77\x61\x69\x74"](0.1)
            continue
        end

        local lll1II1ll1lI = l11ll11l1I1l["\x41\x75\x74\x6f\x46\x61\x72\x6d\x41\x63\x74\x69\x76\x65"] or l11ll11l1I1l["\x41\x75\x74\x6f\x4c\x65\x76\x65\x6c\x41\x63\x74\x69\x76\x65"] or l11ll11l1I1l["\x41\x75\x74\x6f\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] or l11ll11l1I1l["\x41\x75\x74\x6f\x41\x6c\x6c\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] or l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"] or l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"] or l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] or l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] or l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x54\x69\x74\x6c\x65"] or l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x49\x74\x65\x6d\x73"] or l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e"]
        if not lll1II1ll1lI then
            l11ll11l1I1l["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] = ""  
            local llI11lIllI1I = Il1IllIl1Ill["\x43\x68\x61\x72\x61\x63\x74\x65\x72"]
            if llI11lIllI1I and llI11lIllI1I:FindFirstChild("HumanoidRootPart") then
                local l1I1IIII1III = llI11lIllI1I["\x48\x75\x6d\x61\x6e\x6f\x69\x64\x52\x6f\x6f\x74\x50\x61\x72\x74"]:FindFirstChild("JomFarmBV")
                if l1I1IIII1III then l1I1IIII1III:Destroy() end
            end
            task["\x77\x61\x69\x74"](1)
            continue
        end
        
        local llI11lIllI1I = Il1IllIl1Ill["\x43\x68\x61\x72\x61\x63\x74\x65\x72"]
        if not llI11lIllI1I then task["\x77\x61\x69\x74"](1); continue end

        local II11lI1lIllI = { [75159314259063] = true, [99684056491472] = true, [123955125827131] = true, [96767841099256] = true }
        local llIlI1llIIII = II11lI1lIllI[game["\x50\x6c\x61\x63\x65\x49\x64"]]

        local l1l1lI11l1l1 = (game["\x50\x6c\x61\x63\x65\x49\x64"] == 138368689293913)

        if (l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] and not llIlI1llIIII) or (l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] and not l1l1lI11l1l1) then
            task["\x77\x61\x69\x74"](1)  
            continue
        end

        local lI1l11IIllI1 = nil
        local llIIll1IllI1 = ""
        if l11ll11l1I1l["\x41\x75\x74\x6f\x4c\x65\x76\x65\x6c\x41\x63\x74\x69\x76\x65"] then
            local l1I1Il1IIIll = getCurrentLevel()
            local IIIIl11lII1l = Il111Il1llII[1]
            for _, tier in ipairs(Il111Il1llII) do
                if l1I1Il1IIIll >= tier["\x4c\x65\x76\x65\x6c"] then IIIIl11lII1l = tier else break end
            end
            lI1l11IIllI1 = IIIIl11lII1l["\x4d\x6f\x62"]
            llIIll1IllI1 = IIIIl11lII1l["\x51\x75\x65\x73\x74"]

            local IIl11IlIl1Il = Il1IllIl1Ill:FindFirstChild("PlayerGui") and Il1IllIl1Ill["\x50\x6c\x61\x79\x65\x72\x47\x75\x69"]:FindFirstChild("QuestUI")
            local lIIl1111Illl = IIl11IlIl1Il and IIl11IlIl1Il:FindFirstChild("Quest") and IIl11IlIl1Il["\x51\x75\x65\x73\x74"]["\x56\x69\x73\x69\x62\x6c\x65"]

            if l11ll11l1I1l["\x6c\x61\x73\x74\x41\x75\x74\x6f\x51\x75\x65\x73\x74"] ~= llIIll1IllI1 then
                if II1l11l11llI and l11ll11l1I1l["\x6c\x61\x73\x74\x41\x75\x74\x6f\x51\x75\x65\x73\x74"] ~= "" then
                    pcall(function() II1l11l11llI:FireServer("repeatable"); II1l11l11llI:FireServer("Abandon"); II1l11l11llI:FireServer(l11ll11l1I1l["\x6c\x61\x73\x74\x41\x75\x74\x6f\x51\x75\x65\x73\x74"]); II1l11l11llI:FireServer() end)
                end
                l11ll11l1I1l["\x6c\x61\x73\x74\x41\x75\x74\x6f\x51\x75\x65\x73\x74"] = llIIll1IllI1
                lIIl1111Illl = false  
            end
            
            if not lIIl1111Illl then
                local I1lIIlllllII = llI11lIllI1I:GetAttribute("LastQuestAccept") or 0
                if tick() - I1lIIlllllII > 1 then
                    llI11lIllI1I:SetAttribute("LastQuestAccept", tick())
                    if IIl11IIl1lll then pcall(function() IIl11IIl1lll:FireServer(llIIll1IllI1) end) end
                end
            end
            
            local l11lll1I1II1 = llI11lIllI1I:GetAttribute("LastQuestComplete") or 0
            if tick() - l11lll1I1II1 > 2 then
                llI11lIllI1I:SetAttribute("LastQuestComplete", tick())
                if l1IlIlI1111l then pcall(function() l1IlIlI1111l:FireServer(llIIll1IllI1) end) end
            end

        elseif l11ll11l1I1l["\x41\x75\x74\x6f\x46\x61\x72\x6d\x41\x63\x74\x69\x76\x65"] then
            lI1l11IIllI1 = l11ll11l1I1l["\x73\x65\x6c\x65\x63\x74\x65\x64\x4d\x6f\x62"]
        elseif l11ll11l1I1l["\x41\x75\x74\x6f\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] then
            lI1l11IIllI1 = l11ll11l1I1l["\x73\x65\x6c\x65\x63\x74\x65\x64\x42\x6f\x73\x73"]
        elseif l11ll11l1I1l["\x41\x75\x74\x6f\x41\x6c\x6c\x42\x6f\x73\x73\x41\x63\x74\x69\x76\x65"] then
            local lIIIlI1II11I = I11I11I1l1ll:FindFirstChild("NPCs")
            local lllIl1lll1lI = false
            
             
            if lIIIlI1II11I then
                for _, npc in ipairs(lIIIlI1II11I:GetChildren()) do
                    local III1l1Ill11I = npc:FindFirstChild("Humanoid")
                    if III1l1Ill11I and III1l1Ill11I["\x48\x65\x61\x6c\x74\x68"] > 0 then
                        local I1lII111lIl1 = npc["\x4e\x61\x6d\x65"]:gsub("%d+$", "")
                        I1lII111lIl1 = I1lII111lIl1:gsub("_.*", "")
                        local l1lll11lIlI1 = string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](I1lII111lIl1, "%s+", ""))
                        
                        for _, bName in ipairs(IllI11I11l1I) do
                            local IlI1II111llI = string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](bName, "%s+", ""))
                            local Il1l11III1Il = string["\x67\x73\x75\x62"](IlI1II111llI, "boss", "")
                            
                            if l1lll11lIlI1 == IlI1II111llI or l1lll11lIlI1 == Il1l11III1Il then
                                lI1l11IIllI1 = bName
                                lllIl1lll1lI = true
                                break
                            end
                        end
                    end
                    if lllIl1lll1lI then break end
                end
            end
            
            if not lI1l11IIllI1 then
                if l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x41\x6c\x6c\x42\x6f\x73\x73\x65\x73"] then
                    if not llI11lIllI1I:GetAttribute("HopDelayStarted") then
                        llI11lIllI1I:SetAttribute("HopDelayStarted", tick())
                    end
                    if tick() - llI11lIllI1I:GetAttribute("HopDelayStarted") > 5 then
                        print("[JOMHUB] All bosses dead. Hopping server...")
                        ServerHop()
                        task["\x77\x61\x69\x74"](10)
                    end
                end
            else
                llI11lIllI1I:SetAttribute("HopDelayStarted", nil)
            end
        elseif l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"] or l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"] then
            local l1l1IIl1llIl = _G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] or 0
            local I1I1111Il1l1 = ""
            local l11IIll11111 = false
            
            if l1l1IIl1llIl >= 24 then
                if not l11ll11l1I1l["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"] or l11ll11l1I1l["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"] == "None" then
                    I1I1111Il1l1 = "None"
                else
                    I1I1111Il1l1 = l11ll11l1I1l["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"]
                end
            else
                if l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"] then
                    local IIIll1llIlIl = {}
                    local llII111IlI1l = {"GojoBoss", "YujiBoss", "YamatoBoss", "AlucardBoss", "StrongestShinobiBoss", "JinwooBoss", "SukunaBoss", "AizenBoss"}
                    for _, b in ipairs(llII111IlI1l) do
                        if checkBossAlive(b) then table["\x69\x6e\x73\x65\x72\x74"](IIIll1llIlIl, b) end
                    end

                    if #IIIll1llIlIl > 0 then
                        local l11I1IlI1lll = IIIll1llIlIl[1]
                        for _, b in ipairs(IIIll1llIlIl) do
                            if b ~= l11ll11l1I1l["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"] then l11I1IlI1lll = b; break end
                        end
                        I1I1111Il1l1 = l11I1IlI1lll
                    else
                        l11IIll11111 = true
                    end
                else
                    local IIllIII1lIII = {}
                    for k, v in pairs(l11ll11l1I1l["\x70\x69\x74\x79\x42\x75\x69\x6c\x64\x65\x72\x42\x6f\x73\x73\x65\x73"] or {}) do if v then table["\x69\x6e\x73\x65\x72\x74"](IIllIII1lIII, k) end end
                    table["\x73\x6f\x72\x74"](IIllIII1lIII)
                    if #IIllIII1lIII == 0 then IIllIII1lIII = {"SaberBoss"} end
                    
                    local IIIIIllll1l1 = false
                    for _, b in ipairs(IIllIII1lIII) do
                        if checkBossAlive(b) then 
                            I1I1111Il1l1 = b
                            IIIIIllll1l1 = true
                            if llI11lIllI1I:GetAttribute("SummonWait") then llI11lIllI1I:SetAttribute("SummonWait", nil) end
                            break 
                        end
                    end
                    if not IIIIIllll1l1 then
                        local IIl1lII1lIlI = llI11lIllI1I:GetAttribute("PityBuilderIdx") or 1
                        if IIl1lII1lIlI > #IIllIII1lIII then IIl1lII1lIlI = 1; llI11lIllI1I:SetAttribute("PityBuilderIdx", 1) end
                        
                        local l1IIllll1I1I = llI11lIllI1I:GetAttribute("SummonWait")
                        if l1IIllll1I1I then
                            if tick() - l1IIllll1I1I < 4 then
                                I1I1111Il1l1 = IIllIII1lIII[IIl1lII1lIlI]
                            else
                                llI11lIllI1I:SetAttribute("PityBuilderIdx", IIl1lII1lIlI + 1)
                                llI11lIllI1I:SetAttribute("SummonWait", nil)
                            end
                        else
                            I1I1111Il1l1 = IIllIII1lIII[IIl1lII1lIlI]
                        end
                    end
                end
            end
            
            lI1l11IIllI1 = I1I1111Il1l1
            
            if l11IIll11111 then
                if not llI11lIllI1I:GetAttribute("PityHopDelay") then llI11lIllI1I:SetAttribute("PityHopDelay", tick()) end
                if tick() - llI11lIllI1I:GetAttribute("PityHopDelay") > 5 then
                    print("[JOMHUB] AUTO HOP PITY: No world bosses alive. Hopping...")
                    ServerHop()
                    task["\x77\x61\x69\x74"](10)
                end
                continue
            else
                llI11lIllI1I:SetAttribute("PityHopDelay", nil)
            end
        elseif l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x49\x74\x65\x6d\x73"] then
            local lIIIIl1ll11l = {}
            for k, v in pairs(l11ll11l1I1l["\x66\x61\x72\x6d\x53\x65\x63\x72\x65\x74"] or {}) do if v then table["\x69\x6e\x73\x65\x72\x74"](lIIIIl1ll11l, k) end end
            for k, v in pairs(l11ll11l1I1l["\x66\x61\x72\x6d\x4d\x79\x74\x68\x69\x63\x61\x6c"] or {}) do if v then table["\x69\x6e\x73\x65\x72\x74"](lIIIIl1ll11l, k) end end
            for k, v in pairs(l11ll11l1I1l["\x66\x61\x72\x6d\x4c\x65\x67\x65\x6e\x64\x61\x72\x79"] or {}) do if v then table["\x69\x6e\x73\x65\x72\x74"](lIIIIl1ll11l, k) end end
            for k, v in pairs(l11ll11l1I1l["\x66\x61\x72\x6d\x45\x70\x69\x63"] or {}) do if v then table["\x69\x6e\x73\x65\x72\x74"](lIIIIl1ll11l, k) end end
            for k, v in pairs(l11ll11l1I1l["\x66\x61\x72\x6d\x52\x61\x72\x65"] or {}) do if v then table["\x69\x6e\x73\x65\x72\x74"](lIIIIl1ll11l, k) end end
            for k, v in pairs(l11ll11l1I1l["\x66\x61\x72\x6d\x43\x6f\x6d\x6d\x6f\x6e"] or {}) do if v then table["\x69\x6e\x73\x65\x72\x74"](lIIIIl1ll11l, k) end end

            table["\x73\x6f\x72\x74"](lIIIIl1ll11l)
            if #lIIIIl1ll11l > 0 then
                local IIl1lII1lIlI = llI11lIllI1I:GetAttribute("ItemFarmIdx") or 1
                if IIl1lII1lIlI > #lIIIIl1ll11l then IIl1lII1lIlI = 1; llI11lIllI1I:SetAttribute("ItemFarmIdx", IIl1lII1lIlI) end
                
                local Illl1I11lIII = lIIIIl1ll11l[IIl1lII1lIlI]
                local IIlIlll1IIll = l1lIIl1ll11I[Illl1I11lIII]
                
                local l11lIl11IIl1 = llI11lIllI1I:GetAttribute("ItemFarmTime")
                if not l11lIl11IIl1 then 
                    l11lIl11IIl1 = tick()
                    llI11lIllI1I:SetAttribute("ItemFarmTime", l11lIl11IIl1)
                end
                
                if tick() - l11lIl11IIl1 >= l11ll11l1I1l["\x69\x74\x65\x6d\x46\x61\x72\x6d\x44\x75\x72\x61\x74\x69\x6f\x6e"] then
                    llI11lIllI1I:SetAttribute("ItemFarmIdx", IIl1lII1lIlI + 1)
                    llI11lIllI1I:SetAttribute("ItemFarmTime", tick())
                    task["\x77\x61\x69\x74"](1)
                    continue
                end
                
                if type(IIlIlll1IIll) == "table" then
                    local lIIII11l1IlI = false
                     
                    for _, tName in ipairs(IIlIlll1IIll) do
                        if string["\x66\x69\x6e\x64"](string["\x6c\x6f\x77\x65\x72"](tName), "boss") and checkBossAlive(tName) then
                            lI1l11IIllI1 = tName
                            lIIII11l1IlI = true
                            break
                        end
                    end

                     
                    if not lIIII11l1IlI then
                        local l1ll1Il1l11I = {}
                        for _, tName in ipairs(IIlIlll1IIll) do
                            if not string["\x66\x69\x6e\x64"](string["\x6c\x6f\x77\x65\x72"](tName), "boss") then
                                table["\x69\x6e\x73\x65\x72\x74"](l1ll1Il1l11I, tName)
                            end
                        end

                        if #l1ll1Il1l11I > 0 then
                             
                            local IIlllI1l1I1l = l11ll11l1I1l["\x69\x74\x65\x6d\x46\x61\x72\x6d\x44\x75\x72\x61\x74\x69\x6f\x6e"] / #l1ll1Il1l11I
                            local lll11lll11l1 = tick() - l11lIl11IIl1
                            local IlIlllllI1lI = math["\x66\x6c\x6f\x6f\x72"](lll11lll11l1 / IIlllI1l1I1l) + 1
                            if IlIlllllI1lI > #l1ll1Il1l11I then IlIlllllI1lI = #l1ll1Il1l11I end
                            
                            lI1l11IIllI1 = l1ll1Il1l11I[IlIlllllI1lI]
                        else
                             
                            llI11lIllI1I:SetAttribute("ItemFarmIdx", IIl1lII1lIlI + 1)
                            llI11lIllI1I:SetAttribute("ItemFarmTime", tick())
                        end
                    end
                elseif IIlIlll1IIll == "AutoLevel" then
                    local l1I1Il1IIIll = getCurrentLevel()
                    local IIIIl11lII1l = Il111Il1llII[1]
                    for _, tier in ipairs(Il111Il1llII) do
                        if l1I1Il1IIIll >= tier["\x4c\x65\x76\x65\x6c"] then IIIIl11lII1l = tier else break end
                    end
                    lI1l11IIllI1 = IIIIl11lII1l["\x4d\x6f\x62"]
                elseif IIlIlll1IIll == "AllBosses" then
                    for _, bName in ipairs(IllI11I11l1I) do
                        if checkBossAlive(bName) then lI1l11IIllI1 = bName; break end
                    end
                    if not lI1l11IIllI1 then llI11lIllI1I:SetAttribute("ItemFarmIdx", IIl1lII1lIlI + 1); llI11lIllI1I:SetAttribute("ItemFarmTime", tick()) end
                else
                    local Ill11l11I1I1 = string["\x66\x69\x6e\x64"](string["\x6c\x6f\x77\x65\x72"](IIlIlll1IIll or ""), "boss")
                    if Ill11l11I1I1 and not checkBossAlive(IIlIlll1IIll) then llI11lIllI1I:SetAttribute("ItemFarmIdx", IIl1lII1lIlI + 1); llI11lIllI1I:SetAttribute("ItemFarmTime", tick())
                    else lI1l11IIllI1 = IIlIlll1IIll end
                end
            end
        elseif l11ll11l1I1l["\x61\x75\x74\x6f\x46\x61\x72\x6d\x54\x69\x74\x6c\x65"] and l11ll11l1I1l["\x73\x65\x6c\x65\x63\x74\x65\x64\x54\x69\x74\x6c\x65"] ~= "None" then
            local III1l11I1II1 = lll1ll1l11I1[l11ll11l1I1l["\x73\x65\x6c\x65\x63\x74\x65\x64\x54\x69\x74\x6c\x65"]]
            if III1l11I1II1 then
                if III1l11I1II1["\x74\x79\x70\x65"] == "BossKills" or III1l11I1II1["\x74\x79\x70\x65"] == "ItemDrops" then
                    for _, bName in ipairs(IllI11I11l1I) do
                        if checkBossAlive(bName) then lI1l11IIllI1 = bName; break end
                    end
                elseif III1l11I1II1["\x74\x79\x70\x65"] == "Boss" then
                    lI1l11IIllI1 = III1l11I1II1["\x6e\x61\x6d\x65"]
                end

                if not lI1l11IIllI1 and l11ll11l1I1l["\x68\x6f\x70\x46\x6f\x72\x54\x69\x74\x6c\x65"] then
                    if not llI11lIllI1I:GetAttribute("TitleHopDelay") then llI11lIllI1I:SetAttribute("TitleHopDelay", tick()) end
                    if tick() - llI11lIllI1I:GetAttribute("TitleHopDelay") > 5 then
                        print("[JOMHUB] No title bosses found. Hopping server...")
                        ServerHop()
                        task["\x77\x61\x69\x74"](10)
                    end
                end
            end
        elseif l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] and llIlI1llIIII then
            lI1l11IIllI1 = "Dungeon Mob"  
        elseif l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] and l1l1lI11l1l1 then
            lI1l11IIllI1 = "Tower Mob"  
        elseif l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e"] then
            local lIl11I1I1II1 = {}
            for k, v in pairs(l11ll11l1I1l["\x73\x75\x6d\x6d\x6f\x6e\x54\x61\x72\x67\x65\x74\x73"] or {}) do if v then table["\x69\x6e\x73\x65\x72\x74"](lIl11I1I1II1, k) end end
            table["\x73\x6f\x72\x74"](lIl11I1I1II1)

            if #lIl11I1I1II1 > 0 then
                local IIl1lII1lIlI = llI11lIllI1I:GetAttribute("SummonIdx") or 1
                if IIl1lII1lIlI > #lIl11I1I1II1 then IIl1lII1lIlI = 1; llI11lIllI1I:SetAttribute("SummonIdx", 1) end
                
                local I11l1llIII1I = lIl11I1I1II1[IIl1lII1lIlI]

                 
                 
                if checkBossAlive(I11l1llIII1I) then
                    llI11lIllI1I:SetAttribute("SummonIdx", IIl1lII1lIlI + 1)
                else
                     
                    local I1I11Il1llI1 = IIIIl11l1IlI[I11l1llIII1I]
                    local l1111I1lIl1I = true
                    if I1I11Il1llI1 then
                        for item, amount in pairs(I1I11Il1llI1) do
                            if not l1I11IIIl11l[item] or l1I11IIIl11l[item] < amount then l1111I1lIl1I = false; break end
                        end
                    end

                    if l1111I1lIl1I then
                         
                         
                        lI1l11IIllI1 = I11l1llIII1I
                    else
                         
                        llI11lIllI1I:SetAttribute("SummonIdx", IIl1lII1lIlI + 1)
                    end
                end
            end
        end

        if not lI1l11IIllI1 or lI1l11IIllI1 == "None" then 
            if llI11lIllI1I and llI11lIllI1I:FindFirstChild("HumanoidRootPart") then
                local l1I1IIII1III = llI11lIllI1I["\x48\x75\x6d\x61\x6e\x6f\x69\x64\x52\x6f\x6f\x74\x50\x61\x72\x74"]:FindFirstChild("JomFarmBV")
                if l1I1IIII1III then l1I1IIII1III:Destroy() end
            end
            task["\x77\x61\x69\x74"](1)
            continue 
        end

        if not ((l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] and llIlI1llIIII) or (l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] and l1l1lI11l1l1)) then
            local l1I1l1ll1IlI = getPortalForMob(lI1l11IIllI1)
            
            if l1I1l1ll1IlI and l11ll11l1I1l["\x6c\x61\x73\x74\x50\x6f\x72\x74\x61\x6c"] ~= l1I1l1ll1IlI then
                print("[JOMHUB] Attempting to teleport to:", l1I1l1ll1IlI)
                local IlII1IlIllll = teleportToIsland(l1I1l1ll1IlI)
                if IlII1IlIllll then
                    print("[JOMHUB] Successfully arrived and confirmed portal:", l1I1l1ll1IlI)
                    task["\x77\x61\x69\x74"](1)
                else
                    print("[JOMHUB] Failed to confirm portal loading for:", l1I1l1ll1IlI)
                    task["\x77\x61\x69\x74"](2)
                end
                continue
            end
        end
        
         
        local IllI1II1IIIl = llI11lIllI1I and llI11lIllI1I:FindFirstChild("HumanoidRootPart")
        local III1l1Ill11I = llI11lIllI1I and llI11lIllI1I:FindFirstChild("Humanoid")
        if not IllI1II1IIIl or not III1l1Ill11I then task["\x77\x61\x69\x74"](1); continue end
        
        for _, v in pairs(llI11lIllI1I:GetDescendants()) do
            if v:IsA("BasePart") then v["\x43\x61\x6e\x43\x6f\x6c\x6c\x69\x64\x65"] = false end
        end

        local lIIIlI1II11I = I11I11I1l1ll:FindFirstChild("NPCs")
        local Illlll1llI1I = math["\x68\x75\x67\x65"]
        local llll1lllllIl = nil
        
        if (l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] and llIlI1llIIII) or (l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] and l1l1lI11l1l1) then
            if lIIIlI1II11I then
                for _, npc in ipairs(lIIIlI1II11I:GetChildren()) do
                    local lI111lIlll11 = npc:FindFirstChild("Humanoid")
                    local l1I11IlIIIll = npc:FindFirstChild("HumanoidRootPart")
                    if lI111lIlll11 and lI111lIlll11["\x48\x65\x61\x6c\x74\x68"] > 0 and l1I11IlIIIll then
                        local lIl1ll1lI1Il = (IllI1II1IIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - l1I11IlIIIll["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x4d\x61\x67\x6e\x69\x74\x75\x64\x65"]
                        if lIl1ll1lI1Il < Illlll1llI1I then Illlll1llI1I = lIl1ll1lI1Il; llll1lllllIl = npc end
                    end
                end
            end
        else
            if lIIIlI1II11I then
                local IlI1II111llI = string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](lI1l11IIllI1, "%s+", ""))
                local Il1l11III1Il = string["\x67\x73\x75\x62"](IlI1II111llI, "boss", "")
                for _, npc in ipairs(lIIIlI1II11I:GetChildren()) do
                    local I1lII111lIl1 = npc["\x4e\x61\x6d\x65"]:gsub("%d+$", "")
                    I1lII111lIl1 = I1lII111lIl1:gsub("_.*", "")
                    local l1lll11lIlI1 = string["\x6c\x6f\x77\x65\x72"](string["\x67\x73\x75\x62"](I1lII111lIl1, "%s+", ""))
                    if l1lll11lIlI1 == IlI1II111llI or (l1lll11lIlI1 == Il1l11III1Il and npc:FindFirstChild("Humanoid") and npc["\x48\x75\x6d\x61\x6e\x6f\x69\x64"]["\x4d\x61\x78\x48\x65\x61\x6c\x74\x68"] > 5000) then
                        local lI111lIlll11 = npc:FindFirstChild("Humanoid")
                        local l1I11IlIIIll = npc:FindFirstChild("HumanoidRootPart")
                        if lI111lIlll11 and lI111lIlll11["\x48\x65\x61\x6c\x74\x68"] > 0 then
                            if l1I11IlIIIll then
                                local lIl1ll1lI1Il = (IllI1II1IIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - l1I11IlIIIll["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x4d\x61\x67\x6e\x69\x74\x75\x64\x65"]
                                if lIl1ll1lI1Il < Illlll1llI1I then Illlll1llI1I = lIl1ll1lI1Il; llll1lllllIl = npc end
                            elseif lI1l11IIllI1 == "StrongestofTodayBoss" or lI1l11IIllI1 == "StrongestinHistoryBoss" then
                                 
                                local l1I11l1l1IIl = npc:GetPivot()["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]
                                local lIl1ll1lI1Il = (IllI1II1IIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - l1I11l1l1IIl["\x4d\x61\x67\x6e\x69\x74\x75\x64\x65"]
                                if lIl1ll1lI1Il < Illlll1llI1I then Illlll1llI1I = lIl1ll1lI1Il; llll1lllllIl = npc end
                            end
                        end
                    end
                end
            end
        end
        
        if llll1lllllIl then
            if llI11lIllI1I then llI11lIllI1I:SetAttribute("BossLoadAttempts", 0) end
            if (l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"] or l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"]) and not llI11lIllI1I:GetAttribute("TrackingPityFor") then
                llI11lIllI1I:SetAttribute("TrackingPityFor", llll1lllllIl["\x4e\x61\x6d\x65"])
                local I11lIlIll1ll = llll1lllllIl
                
                local I111IllllIll = I11lIlIll1ll:FindFirstChild("Humanoid")
                if I111IllllIll then
                    local I1I1I1llllI1; I1I1I1llllI1 = I111IllllIll["\x44\x69\x65\x64"]:Connect(function()
                        if l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"] or l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"] then
                            if _G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] >= 24 then updatePity(0)
                            else updatePity(_G["\x4a\x6f\x6d\x48\x75\x62\x5f\x42\x6f\x73\x73\x50\x69\x74\x79"] + 1) end
                        end
                        if llI11lIllI1I then llI11lIllI1I:SetAttribute("TrackingPityFor", nil) end
                        if I1I1I1llllI1 then I1I1I1llllI1:Disconnect() end
                    end)
                end
            end
            local IIIlI111lI11 = llll1lllllIl:FindFirstChild("HumanoidRootPart") or llll1lllllIl:FindFirstChildWhichIsA("BasePart")
            local I111IllllIll = llll1lllllIl:FindFirstChild("Humanoid")
            
            if IIIlI111lI11 and I111IllllIll then
                pcall(function() I111IllllIll["\x57\x61\x6c\x6b\x53\x70\x65\x65\x64"] = 0; I111IllllIll["\x4a\x75\x6d\x70\x50\x6f\x77\x65\x72"] = 0; IIIlI111lI11["\x43\x61\x6e\x43\x6f\x6c\x6c\x69\x64\x65"] = false; IIIlI111lI11["\x56\x65\x6c\x6f\x63\x69\x74\x79"] = Vector3["\x7a\x65\x72\x6f"] end)
                
                local lII11lllI1lI = (l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] and llIlI1llIIII) and l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x50\x6f\x73"] or l11ll11l1I1l["\x66\x61\x72\x6d\x50\x6f\x73"]
                local I11ll1IIlIII = getFarmPosition(IIIlI111lI11, l11ll11l1I1l["\x66\x61\x72\x6d\x44\x69\x73\x74\x61\x6e\x63\x65"], lII11lllI1lI)
                if (IllI1II1IIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - I11ll1IIlIII["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x4d\x61\x67\x6e\x69\x74\x75\x64\x65"] > 50 then
                    local l1I1IIII1III = IllI1II1IIIl:FindFirstChild("JomFarmBV")
                    if l1I1IIII1III then l1I1IIII1III:Destroy() end
                    SmartTeleport(I11ll1IIlIII)
                else
                    local l1I1IIII1III = IllI1II1IIIl:FindFirstChild("JomFarmBV")
                    if not l1I1IIII1III then
                        l1I1IIII1III = Instance["\x6e\x65\x77"]("BodyVelocity")
                        l1I1IIII1III["\x4e\x61\x6d\x65"] = "JomFarmBV"
                        l1I1IIII1III["\x4d\x61\x78\x46\x6f\x72\x63\x65"] = Vector3["\x6e\x65\x77"](math["\x68\x75\x67\x65"], math["\x68\x75\x67\x65"], math["\x68\x75\x67\x65"])
                        l1I1IIII1III["\x56\x65\x6c\x6f\x63\x69\x74\x79"] = Vector3["\x7a\x65\x72\x6f"]
                        l1I1IIII1III["\x50\x61\x72\x65\x6e\x74"] = IllI1II1IIIl
                    end
                    for _, v in ipairs(IllI1II1IIIl:GetChildren()) do
                        if (v:IsA("BodyVelocity") and v["\x4e\x61\x6d\x65"] ~= "JomFarmBV" and v["\x4e\x61\x6d\x65"] ~= "JomTeleportBV") or v:IsA("BodyPosition") or v:IsA("LinearVelocity") or v:IsA("AlignPosition") then
                            v:Destroy()
                        end
                    end
                    if (IllI1II1IIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - I11ll1IIlIII["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]["\x4d\x61\x67\x6e\x69\x74\x75\x64\x65"] > 5 then
                        IllI1II1IIIl["\x43\x46\x72\x61\x6d\x65"] = I11ll1IIlIII
                    end
                    IllI1II1IIIl["\x56\x65\x6c\x6f\x63\x69\x74\x79"] = Vector3["\x7a\x65\x72\x6f"]
                    pcall(function() IllI1II1IIIl["\x41\x73\x73\x65\x6d\x62\x6c\x79\x4c\x69\x6e\x65\x61\x72\x56\x65\x6c\x6f\x63\x69\x74\x79"] = Vector3["\x7a\x65\x72\x6f"] end)
                    
                    local II11ll1Ill1l = getWeaponsToUse()
                    local IIll1ll1ll1I = #II11ll1Ill1l > 0 and II11ll1Ill1l or {false}
                    for _, wep in ipairs(IIll1ll1ll1I) do
                        if wep and typeof(wep) == "Instance" and wep["\x50\x61\x72\x65\x6e\x74"] ~= llI11lIllI1I then
                            pcall(function() III1l1Ill11I:EquipTool(wep) end)
                            task["\x77\x61\x69\x74"](0.05)  
                        end
                        executeAttacks(llll1lllllIl, wep)
                    end
                end
            elseif (lI1l11IIllI1 == "StrongestofTodayBoss" or lI1l11IIllI1 == "StrongestinHistoryBoss") and I111IllllIll then
                 
                local l1I11l1l1IIl = llll1lllllIl:GetPivot()["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]
                pcall(function() Il1IllIl1Ill:RequestStreamAroundAsync(l1I11l1l1IIl) end)
                if (IllI1II1IIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - l1I11l1l1IIl["\x4d\x61\x67\x6e\x69\x74\x75\x64\x65"] > 50 then
                    local l1I1IIII1III = IllI1II1IIIl:FindFirstChild("JomFarmBV")
                    if l1I1IIII1III then l1I1IIII1III:Destroy() end
                    SmartTeleport(CFrame["\x6e\x65\x77"](l1I11l1l1IIl + Vector3["\x6e\x65\x77"](0, 15, 0)))
                end
            end
        else
            local l1I1IIII1III = IllI1II1IIIl:FindFirstChild("JomFarmBV")
            if l1I1IIII1III then l1I1IIII1III:Destroy() end
            if llI11lIllI1I:GetAttribute("TrackingPityFor") then llI11lIllI1I:SetAttribute("TrackingPityFor", nil) end
            
            local Ill11l11I1I1 = lI1l11IIllI1 and string["\x66\x69\x6e\x64"](string["\x6c\x6f\x77\x65\x72"](lI1l11IIllI1), "boss")
            if Ill11l11I1I1 then
                local I11ll11I1III = string["\x67\x73\x75\x62"](lI1l11IIllI1, "Boss", "")
                local l1ll1IlI11I1 = "TimedBossSpawn_" .. lI1l11IIllI1 .. "_Container"
                local IIlIlIlIll11 = "TimedBossSpawn_" .. I11ll11I1III .. "_Container"
                local lllIllI1l1Il = I11I11I1l1ll:FindFirstChild(l1ll1IlI11I1) or I11I11I1l1ll:FindFirstChild(IIlIlIlIll11)
                if not lllIllI1l1Il and lI1l11IIllI1 == "YamatoBoss" then lllIllI1l1Il = I11I11I1l1ll:FindFirstChild("TimedBossSpawn_Yamato_Container") end
                
                if lllIllI1l1Il then
                    local lI1lII11IIII = lllIllI1l1Il:FindFirstChild("TimedBossSpawn_" .. lI1l11IIllI1) or lllIllI1l1Il
                    local I111lI1IIllI = nil
                    if lI1lII11IIII:IsA("Model") and lI1lII11IIII["\x50\x72\x69\x6d\x61\x72\x79\x50\x61\x72\x74"] then I111lI1IIllI = lI1lII11IIII:GetPivot()["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]
                    elseif lI1lII11IIII:IsA("Model") then local IlI1Illl1ll1 = lI1lII11IIII:FindFirstChildWhichIsA("BasePart", true); if IlI1Illl1ll1 then I111lI1IIllI = IlI1Illl1ll1["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] end
                    elseif lI1lII11IIII:IsA("BasePart") then I111lI1IIllI = lI1lII11IIII["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] end
                    
                    if I111lI1IIllI then
                        pcall(function() Il1IllIl1Ill:RequestStreamAroundAsync(I111lI1IIllI) end)
                        if (IllI1II1IIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - I111lI1IIllI["\x4d\x61\x67\x6e\x69\x74\x75\x64\x65"] > 50 then 
                            SmartTeleport(CFrame["\x6e\x65\x77"](I111lI1IIllI + Vector3["\x6e\x65\x77"](0, 15, 0))) 
                        else
                            IllI1II1IIIl["\x56\x65\x6c\x6f\x63\x69\x74\x79"] = Vector3["\x7a\x65\x72\x6f"]
                        end
                    end
                end

                local lII11IlIIII1 = {
                    ["AtomicBoss"]=true, ["TrueAizenBoss"]=true, ["AnosBoss"]=true, 
                    ["RimuruBoss"]=true, ["StrongestofTodayBoss"]=true, ["StrongestinHistoryBoss"]=true, 
                    ["SaberBoss"]=true, ["QinShiBoss"]=true, ["IchigoBoss"]=true, 
                    ["GilgameshBoss"]=true, ["BlessedMaidenBoss"]=true, ["SaberAlterBoss"]=true
                }
                
                if (l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e\x50\x69\x74\x79"] or l11ll11l1I1l["\x61\x75\x74\x6f\x48\x6f\x70\x50\x69\x74\x79"] or l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e"]) and lII11IlIIII1[lI1l11IIllI1] then
                        if not llI11lIllI1I:GetAttribute("LastPitySummon") or tick() - llI11lIllI1I:GetAttribute("LastPitySummon") > 8 then
                            llI11lIllI1I:SetAttribute("LastPitySummon", tick())
                            llI11lIllI1I:SetAttribute("SummonWait", tick())
                            print("[JOMHUB] Summoning " .. lI1l11IIllI1 .. "...")
                            
                            local I111llIIl1l1 = II1llll1I1I1:FindFirstChild("RemoteEvents")
                            local Il1II1I1111I = II1llll1I1I1:FindFirstChild("Remotes")
                            local lIllI1II1III = l11ll11l1I1l["\x61\x75\x74\x6f\x53\x75\x6d\x6d\x6f\x6e"] and l11ll11l1I1l["\x73\x75\x6d\x6d\x6f\x6e\x44\x69\x66\x66"] or l11ll11l1I1l["\x70\x69\x74\x79\x53\x75\x6d\x6d\x6f\x6e\x44\x69\x66\x66"] or "Normal"
                            
                            pcall(function()
                                if lI1l11IIllI1 == "AtomicBoss" and I111llIIl1l1 and I111llIIl1l1:FindFirstChild("RequestSpawnAtomic") then I111llIIl1l1["\x52\x65\x71\x75\x65\x73\x74\x53\x70\x61\x77\x6e\x41\x74\x6f\x6d\x69\x63"]:FireServer(lIllI1II1III)
                                elseif lI1l11IIllI1 == "TrueAizenBoss" and I111llIIl1l1 and I111llIIl1l1:FindFirstChild("RequestSpawnTrueAizen") then I111llIIl1l1["\x52\x65\x71\x75\x65\x73\x74\x53\x70\x61\x77\x6e\x54\x72\x75\x65\x41\x69\x7a\x65\x6e"]:FireServer(lIllI1II1III)
                                elseif lI1l11IIllI1 == "AnosBoss" and Il1II1I1111I and Il1II1I1111I:FindFirstChild("RequestSpawnAnosBoss") then Il1II1I1111I["\x52\x65\x71\x75\x65\x73\x74\x53\x70\x61\x77\x6e\x41\x6e\x6f\x73\x42\x6f\x73\x73"]:FireServer("Anos", lIllI1II1III)
                                elseif lI1l11IIllI1 == "RimuruBoss" and I111llIIl1l1 and I111llIIl1l1:FindFirstChild("RequestSpawnRimuru") then I111llIIl1l1["\x52\x65\x71\x75\x65\x73\x74\x53\x70\x61\x77\x6e\x52\x69\x6d\x75\x72\x75"]:FireServer(lIllI1II1III)
                                elseif lI1l11IIllI1 == "StrongestofTodayBoss" and Il1II1I1111I and Il1II1I1111I:FindFirstChild("RequestSpawnStrongestBoss") then Il1II1I1111I["\x52\x65\x71\x75\x65\x73\x74\x53\x70\x61\x77\x6e\x53\x74\x72\x6f\x6e\x67\x65\x73\x74\x42\x6f\x73\x73"]:FireServer("StrongestToday", lIllI1II1III)
                                elseif lI1l11IIllI1 == "StrongestinHistoryBoss" and Il1II1I1111I and Il1II1I1111I:FindFirstChild("RequestSpawnStrongestBoss") then Il1II1I1111I["\x52\x65\x71\x75\x65\x73\x74\x53\x70\x61\x77\x6e\x53\x74\x72\x6f\x6e\x67\x65\x73\x74\x42\x6f\x73\x73"]:FireServer("StrongestHistory", lIllI1II1III)
                                elseif lI1l11IIllI1 == "SaberBoss" and Il1II1I1111I and Il1II1I1111I:FindFirstChild("RequestSummonBoss") then Il1II1I1111I["\x52\x65\x71\x75\x65\x73\x74\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"]:FireServer("SaberBoss")
                                elseif lI1l11IIllI1 == "QinShiBoss" and Il1II1I1111I and Il1II1I1111I:FindFirstChild("RequestSummonBoss") then Il1II1I1111I["\x52\x65\x71\x75\x65\x73\x74\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"]:FireServer("QinShiBoss")
                                elseif lI1l11IIllI1 == "IchigoBoss" and Il1II1I1111I and Il1II1I1111I:FindFirstChild("RequestSummonBoss") then Il1II1I1111I["\x52\x65\x71\x75\x65\x73\x74\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"]:FireServer("IchigoBoss")
                                elseif lI1l11IIllI1 == "GilgameshBoss" and Il1II1I1111I and Il1II1I1111I:FindFirstChild("RequestSummonBoss") then Il1II1I1111I["\x52\x65\x71\x75\x65\x73\x74\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"]:FireServer("GilgameshBoss", lIllI1II1III)
                                elseif lI1l11IIllI1 == "BlessedMaidenBoss" and Il1II1I1111I and Il1II1I1111I:FindFirstChild("RequestSummonBoss") then Il1II1I1111I["\x52\x65\x71\x75\x65\x73\x74\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"]:FireServer("BlessedMaidenBoss", lIllI1II1III)
                                elseif lI1l11IIllI1 == "SaberAlterBoss" and Il1II1I1111I and Il1II1I1111I:FindFirstChild("RequestSummonBoss") then Il1II1I1111I["\x52\x65\x71\x75\x65\x73\x74\x53\x75\x6d\x6d\x6f\x6e\x42\x6f\x73\x73"]:FireServer("SaberAlterBoss", lIllI1II1III)
                                end
                            end)
                        end
                    end
            else
                if not llIIll1IllI1 or llIIll1IllI1 == "" then
                    for _, tier in ipairs(Il111Il1llII) do
                        if tier["\x4d\x6f\x62"] == lI1l11IIllI1 then
                            llIIll1IllI1 = tier["\x51\x75\x65\x73\x74"]
                            break
                        end
                    end
                end

                if llIIll1IllI1 and llIIll1IllI1 ~= "" then
                    local IlI1Ill1111I = I11I11I1l1ll:FindFirstChild(llIIll1IllI1) or (I11I11I1l1ll:FindFirstChild("ServiceNPCs") and I11I11I1l1ll["\x53\x65\x72\x76\x69\x63\x65\x4e\x50\x43\x73"]:FindFirstChild(llIIll1IllI1))
                    if IlI1Ill1111I and IlI1Ill1111I:IsA("Model") then
                        local I1II1I1I11l1 = IlI1Ill1111I:GetPivot()["\x50\x6f\x73\x69\x74\x69\x6f\x6e"]
                        pcall(function() Il1IllIl1Ill:RequestStreamAroundAsync(I1II1I1I11l1) end)
                        if (IllI1II1IIIl["\x50\x6f\x73\x69\x74\x69\x6f\x6e"] - I1II1I1I11l1["\x4d\x61\x67\x6e\x69\x74\x75\x64\x65"] > 50 then
                            SmartTeleport(CFrame["\x6e\x65\x77"](I1II1I1I11l1 + Vector3["\x6e\x65\x77"](0, 15, -20)))
                        else
                            IllI1II1IIIl["\x56\x65\x6c\x6f\x63\x69\x74\x79"] = Vector3["\x7a\x65\x72\x6f"]
                        end
                    end
                end
            end
            task["\x77\x61\x69\x74"](0.5)  
        end
    end
end)

task["\x73\x70\x61\x77\x6e"](function()
    while task["\x77\x61\x69\x74"](1) do
        if l11ll11l1I1l["\x61\x75\x74\x6f\x44\x75\x6e\x67\x65\x6f\x6e"] then
            local IIllIIl1IIII = 77747658251236
            local II11lI1lIllI = {
                [75159314259063] = true,  
                [99684056491472] = true,  
                [123955125827131] = true,  
                [96767841099256] = true  
            }
            if game["\x50\x6c\x61\x63\x65\x49\x64"] == IIllIIl1IIII then
                local l1ll1lIIlI11 = Il1IllIl1Ill["\x43\x68\x61\x72\x61\x63\x74\x65\x72"] and Il1IllIl1Ill["\x43\x68\x61\x72\x61\x63\x74\x65\x72"]:GetAttribute("LastDungeonReq") or 0
                if tick() - l1ll1lIIlI11 > 5 then
                    if Il1IllIl1Ill["\x43\x68\x61\x72\x61\x63\x74\x65\x72"] then Il1IllIl1Ill["\x43\x68\x61\x72\x61\x63\x74\x65\x72"]:SetAttribute("LastDungeonReq", tick()) end
                    if Ill1I1111Il1 then pcall(function() Ill1I1111Il1:FireServer(l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x54\x79\x70\x65"]) end) end
                end
            elseif II11lI1lIllI[game["\x50\x6c\x61\x63\x65\x49\x64"]] then
                if l1l1llI11III then pcall(function() l1l1llI11III:FireServer(l11ll11l1I1l["\x64\x75\x6e\x67\x65\x6f\x6e\x44\x69\x66\x66"]) end) end
            end
        end
        if l11ll11l1I1l["\x61\x75\x74\x6f\x49\x6e\x66\x69\x6e\x69\x74\x65\x54\x6f\x77\x65\x72"] then
            local IIllIIl1IIII = 77747658251236
            if game["\x50\x6c\x61\x63\x65\x49\x64"] == IIllIIl1IIII then
                if Ill1I1111Il1 then pcall(function() Ill1I1111Il1:FireServer("InfiniteTower") end) end
            elseif game["\x50\x6c\x61\x63\x65\x49\x64"] == 138368689293913 then
                if l1l1llI11III then pcall(function() l1l1llI11III:FireServer("start") end) end
                pcall(function()
                    local Il111l1Il111 = Il1IllIl1Ill:FindFirstChild("PlayerGui")
                    if Il111l1Il111 then
                        local l11l1lII11II = Il111l1Il111:FindFirstChild("InfiniteTowerUI") or Il111l1Il111:FindFirstChild("TowerUI")
                        if l11l1lII11II and l11l1lII11II["\x45\x6e\x61\x62\x6c\x65\x64"] then l11l1lII11II["\x45\x6e\x61\x62\x6c\x65\x64"] = false end
                    end
                end)
            end
        end
    end
end)
