local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Network = require(ReplicatedStorage.Network)

print("Hello world, from client!")
print("Hello again via the publish script!")

Network.Dungeon.Fire(true)
