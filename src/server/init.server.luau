local ServerStorage = game:GetService("ServerStorage")

local Network = require(ServerStorage.Network)

print("Hello world, from server!")

print("Lets try an automatic deployment")

Network.Dungeon.On(function(player: Player, foo: boolean)
	print("Player, foo:")
	print(player, foo)
end)
