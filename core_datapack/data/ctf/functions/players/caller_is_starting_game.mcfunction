clear @s
xp add @s -1000000 levels
effect give @s minecraft:saturation 30 255
effect give @s minecraft:regeneration 30 255
function ctf:players/teleport_caller_to_spread_point
function ctf:players/give_caller_kit
scoreboard players set @s deaths 0
trigger confirmed add 0
scoreboard players set @s gamePhase 1