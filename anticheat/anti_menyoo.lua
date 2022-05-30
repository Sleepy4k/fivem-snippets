local enable_anti_menyoo = true

local dictTextures = {
	"MenyooExtras",
	"rampage_tr_main",
	"rampage_tr_animated",
	"heisthud",
	"digitaloverlay",
	"fm",
}

local filesReady = {
	"rampage_tr_main.ytd",
	"rampage_tr_animated.ytd",
	"rampage_tr_main.ytd",
	"rampage_tr_main.ytd",
	"rampage_tr_main.ytd",
}

--// don't touch this please \\--
local hasstreamedtexturedictloaded = HasStreamedTextureDictLoaded
local isstreamingfileready = IsStreamingFileReady

CreateThread(function()
	while true do
		local msec = 3000
		local loaded = ""
		local detected = false

		if enable_anti_menyoo then
			for k,v in pairs(dictTextures) do
				if hasstreamedtexturedictloaded(v) then
					loaded = v
					detected = true
				end
			end
	
			for k,v in pairs(filesReady) do
				if isstreamingfileready(v) then
					loaded = v
					detected = true
				end
			end
	
			if detected then
				--// use your server side trigger for kick player and discord log \\--
				--// gunakan trigger server side kalian untuk kick player dan log discord \\-- 
				msec = 1*60000
			end
		end

		Wait(msec)
	end
end)
