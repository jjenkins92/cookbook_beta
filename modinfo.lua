--Thanks to @hafizbistar for getting us started with https://github.com/hafizbistar/dst_healthinfo

-- information about the mod
name = "Cookbook"
author = "Olsen, Julia and Chris"
forumthread = ""
version = "0.0.0"
--version_compatible = "2.1.3"

local IS_DST = name.utf8len
description = r
	"v"..version.."\nCookbook for showing all of those crockpot recipe - what ingredient you need, what they do, the whole shabang!"

api_version = 6
api_version_dst = 10

--This lets the clients know that they need to download the mod before they can join a server that is using it.
all_clients_require_mod = false

--This let's the game know that this mod doesn't need to be listed in the server's mod listing
client_only_mod = true

--Let the mod system know that this mod is functional with Don't Starve Together
dont_starve_compatible = true
reign_of_giants_compatible = true
dst_compatible = true
shipwrecked_compatible = true

-- custom icon
--icon_atlas = "preview.xml"
--icon = "preview.tex"

--priority = 0.00375859599 --DST unique id
