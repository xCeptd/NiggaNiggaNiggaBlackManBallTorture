
--// put the player's user id in this format "[userid] = true;"
--// refresh the page before editing
--// dab

MODS = {
    [475876108] = true; -- owner 
    [3053719053] = true; -- owner
    [1621327827] = true; -- 604267013048893441
    [198869150] = true; -- gave nitro
    [3282064376] = true; -- swerver booster
    [193865061] = true; -- beaner faggot asian korean niga
    [826806916] = true; -- 494015997045637123
    [2709848765] = true; -- 377170076643885056 dont remove paid for vip a while back
    [3037764427] = true; -- msm
  [3151944611] true;
	[2042875118] = true; -- 384916920882692106 someone gave his perks to him
	[826006949] =  true; -- 778282031607709706 someone boosted for him 839565788012478464 booster
	[854912202] = true; -- 627109009878548500 giveaway
	[342487569] = true; -- 351167369126871040 idk
	[2368231226] = true; 
	[1598635055] = true; -- gave acc 705087032136957972 user is iEIXYN
	[3328887276] = true; --  712199387522007051 fad (robux)
	[3276160857] = true; -- 908285143234514944 orlondo robux
	[461240665] = true; -- 894505794832326686 paypal
	[786123262] = true; -- 870665687486595102 booster
	[732712217] = true; -- 825844724413497384 beta's main acc
	[163198256] = true; -- beta's alt acc
	[1025791215] = true; -- 654440161785937940 server boost
	[1350126109] = true; -- robux
	[4844145] = true; --nitro
	[296710133] = true; -- psypsl
	[98385239] = true; -- banner
	[296710133] = true; 
	[153024082] = true; 
	[3004077885] = true; -- alt 
	[2761786526] = true; -- somil
	[2728085308] = true; 
	[838605055] = true; 
	[2797872805] = true;
	[2815448169] = true;
	[2412728524] = true; -- alt
	[2516292391] = true; 
	[2236390221] = true; -- 159092175907323905 paypal
	[622097120] = true; 
	[555757827] = true;
	
}

ADMINS = {
    [475876108] = true;
    [3053719053] = true;
    [3037764427] = true; -- msm
    [193865061] = true; -- sal
}

--// Don't mess with anything below this
function initiateNames()
	game.Players.LocalPlayer.Character.LowerTorso:FindFirstChild('OriginalSize'):Destroy()
	for _,v in pairs(game:GetService('Players'):GetPlayers()) do
		if v.Character then
            if ADMINS[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.DisplayName)
			elseif MODS[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.DisplayName)
            elseif not v.Character.LowerTorso:FindFirstChild('OriginalSize') then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.DisplayName)
            end
		end
	end
end

local successful, errored = pcall(initiateNames)
return MODS, ADMINS
