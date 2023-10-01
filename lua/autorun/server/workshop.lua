-- Configuration variables --
local COLLECTION_URL = "https://api.steampowered.com/ISteamRemoteStorage/GetCollectionDetails/v1/"
local COLLECTION_ID = ""

local function addIDs(body, length, headers, code)
    -- Grabbing the response --
    body = util.JSONToTable(body)
    body = body["response"]["collectiondetails"][1]["children"]

    -- Adding the addon IDs to the resource --
    for _, v in ipairs(body) do
        local i = v["publishedfileid"]
        print("Adding Workshop Resource: " .. i)
        resource.AddWorkshop(i)
    end
end

local function main()
	http.Post(COLLECTION_URL, {collectioncount = "1", ["publishedfileids[0]"] = COLLECTION_ID}, addIDs, print)
end

-- Running main on the next tick. --
timer.Simple(0, main)
