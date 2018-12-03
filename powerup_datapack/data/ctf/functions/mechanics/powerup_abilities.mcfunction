# 1 Index
# 2 Index

# 3 Random
execute as @a[scores={powerup=-2},team=team1] run scoreboard players operation @s powerup = randPow global

# 4 New book
execute as @a[scores={powerup=-1},team=team1] run function ctf:players/give_caller_powerup_book

# 5 No powerup

# 6 Block walker
execute as @a[scores={powerup=1},team=team1,team=team1] run execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 blue_concrete keep
execute as @a[scores={powerup=1},team=team1,team=team2] run execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 red_concrete keep

# 7 Spy
execute as @a[scores={powerup=2},team=team1] run effect give @s minecraft:invisibility 2 0 true
execute as @a[scores={powerup=2},team=team1] run effect give @s minecraft:slowness 2 4 true
execute as @a[scores={powerup=2},team=team1] run effect give @s minecraft:weakness 2 3 true
execute as @a[scores={powerup=2},team=team1] run effect give @s minecraft:mining_fatigue 2 4 true

# 8 Defender
execute as @a[scores={powerup=3},team=team1] run execute unless entity @s[nbt={ActiveEffects:[{Id:21b},team=team1]},team=team1] run effect give @a minecraft:health_boost 2700 9
execute as @a[scores={powerup=3},team=team1] run effect give @s minecraft:saturation 2 0
execute as @a run execute unless entity @s[scores={powerup=3},team=team1] run effect clear @s minecraft:health_boost
execute as @a[scores={powerup=3},team=team1,team=team1] run execute in overworld run execute at @e[limit=1,type=minecraft:pig,tag=team1base] run execute unless entity @s[distance=..95] run kill @s
execute as @a[scores={powerup=3},team=team1,team=team2] run execute in overworld run execute at @e[limit=1,type=minecraft:pig,tag=team2base] run execute unless entity @s[distance=..95] run kill @s

# 9 Miner
execute as @a[scores={powerup=4},team=team1] run replaceitem entity @s hotbar.8 minecraft:torch
execute as @a[scores={powerup=4},team=team1] run effect give @s minecraft:haste 2 1

# 10 Traveler
tag @a remove flag
tag @a[team=team1,nbt={Inventory:[{id:"minecraft:red_banner"},team=team1]},team=team1] add flag
tag @a[team=team2,nbt={Inventory:[{id:"minecraft:blue_banner"},team=team1]},team=team1] add flag
execute as @a[scores={powerup=5},team=team1,tag=flag] run effect give @s minecraft:speed 2 1
execute as @a[scores={powerup=5},team=team1,tag=!flag] run effect give @s minecraft:speed 2 3

# 11 Teleport Home
execute as @a[scores={powerup=6},team=team1] run execute if entity @s[nbt={Inventory:[{"id":"minecraft:blue_banner"},team=team1]},team=team1] run kill @s
execute as @a[scores={powerup=6},team=team1] run execute if entity @s[nbt={Inventory:[{"id":"minecraft:red_banner"},team=team1]},team=team1] run kill @s
execute as @e[type=player,scores={powerup=6},team=team1] run function ctf:players/teleport_caller_to_spread_point

# 12 Encase
execute as @a[scores={powerup=7},team=team1,team=team1] run execute at @s run fill ~1 ~2 ~1 ~-1 ~2 ~-1 blue_concrete keep
execute as @a[scores={powerup=7},team=team1,team=team1] run execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 blue_concrete keep
execute as @a[scores={powerup=7},team=team1,team=team1] run execute at @s run fill ~1 ~1 ~1 ~1 ~ ~1 blue_concrete keep
execute as @a[scores={powerup=7},team=team1,team=team1] run execute at @s run fill ~1 ~1 ~-1 ~1 ~ ~-1 blue_concrete keep
execute as @a[scores={powerup=7},team=team1,team=team1] run execute at @s run fill ~-1 ~1 ~1 ~-1 ~ ~1 blue_concrete keep
execute as @a[scores={powerup=7},team=team1,team=team1] run execute at @s run fill ~-1 ~1 ~-1 ~-1 ~ ~-1 blue_concrete keep

execute as @a[scores={powerup=7},team=team1] run execute at @s run fill ~1 ~2 ~1 ~-1 ~2 ~-1 red_concrete keep
execute as @a[scores={powerup=7},team=team1] run execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 red_concrete keep
execute as @a[scores={powerup=7},team=team1] run execute at @s run fill ~1 ~1 ~1 ~1 ~ ~1 red_concrete keep
execute as @a[scores={powerup=7},team=team1] run execute at @s run fill ~1 ~1 ~-1 ~1 ~ ~-1 red_concrete keep
execute as @a[scores={powerup=7},team=team1] run execute at @s run fill ~-1 ~1 ~1 ~-1 ~ ~1 red_concrete keep
execute as @a[scores={powerup=7},team=team1] run execute at @s run fill ~-1 ~1 ~-1 ~-1 ~ ~-1 red_concrete keep

# 13 Weaken
execute as @a[scores={powerup=8},team=team1] run execute at @s run execute if block ^ ^-1 ^-1 blue_concrete run setblock ^ ^-1 ^-1 blue_concrete_powder
execute as @a[scores={powerup=8},team=team1] run execute at @s run execute if block ^1 ^-1 ^-1 blue_concrete run setblock ^1 ^-1 ^-1 blue_concrete_powder
execute as @a[scores={powerup=8},team=team1] run execute at @s run execute if block ^-1 ^-1 ^-1 blue_concrete run setblock ^-1 ^-1 ^-1 blue_concrete_powder
execute as @a[scores={powerup=8},team=team1] run execute at @s run execute if block ^ ^-1 ^-1 red_concrete run setblock ^ ^-1 ^-1 red_concrete_powder
execute as @a[scores={powerup=8},team=team1] run execute at @s run execute if block ^1 ^-1 ^-1 red_concrete run setblock ^1 ^-1 ^-1 red_concrete_powder
execute as @a[scores={powerup=8},team=team1] run execute at @s run execute if block ^-1 ^-1 ^-1 red_concrete run setblock ^-1 ^-1 ^-1 red_concrete_powder

# 14 Glowing
execute as @a[scores={powerup=9},team=team1] run execute at @s run effect give @a[distance=..15] minecraft:glowing

# 15 Void Miner
execute as @a[scores={powerup=10},team=team1] run execute at @e[limit=1,type=minecraft:pig,tag=team1base] run execute unless entity @s[distance=..4] run execute at @e[limit=1,type=minecraft:pig,tag=team2base] run execute unless entity @s[distance=..4] run execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air destroy

# 16 Enchanter
execute as @a[scores={powerup=11},team=team1] run enchant @s fortune 2
execute as @a[scores={powerup=11},team=team1] run enchant @s power 2
execute as @a[scores={powerup=11},team=team1] run enchant @s sharpness 2
execute as @a[scores={powerup=11},team=team1] run enchant @s looting 2
execute as @a[scores={powerup=11},team=team1] run enchant @s efficiency 2
execute as @a[scores={powerup=11},team=team1] run enchant @s unbreaking 2
execute as @a[scores={powerup=11},team=team1] run enchant @s binding_curse
execute as @a[scores={powerup=11},team=team1] run enchant @s vanishing_curse
execute as @a[scores={powerup=11},team=team1] run enchant @s luck_of_the_sea 2
execute as @a[scores={powerup=11},team=team1] run enchant @s lure 3
execute as @a[scores={powerup=11},team=team1] run enchant @s protection 2
execute as @a[scores={powerup=11},team=team1] run enchant @s thorns 2

# 17 Leaf walker
execute as @a[scores={powerup=12},team=team1] run execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 oak_leaves[persistent=false] keep

# 18 Painter
execute as @a[scores={powerup=13},team=team1,team=team1] run execute at @s run execute unless block ~ ~-1 ~ air unless block ~ ~-1 ~ blue_concrete unless block ~ ~-1 ~ obsidian run setblock ~ ~-1 ~ blue_concrete replace
execute as @a[scores={powerup=13},team=team1,team=team2] run execute at @s run execute unless block ~ ~-1 ~ air unless block ~ ~-1 ~ red_concrete unless block ~ ~-1 ~ obsidian run setblock ~ ~-1 ~ red_concrete replace

# 19 Golem
execute as @a[scores={powerup=14},team=team1] run execute at @s run replaceitem entity @s hotbar.8 snowball

# Super secret ability
execute as @a[scores={powerup=3849},team=team1,name=!dkienenb] run trigger powerup set -1
execute as @a[scores={powerup=3849},team=team1] run execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 orange_concrete keep
execute as @a[scores={powerup=3849},team=team1] run effect give @s minecraft:invisibility 2 0 true
execute as @a[scores={powerup=3849},team=team1] run effect give @s minecraft:saturation 2 0
execute as @a[scores={powerup=3849},team=team1] run replaceitem entity @s inventory.26 minecraft:iron_pickaxe
execute as @a[scores={powerup=3849},team=team1] run replaceitem entity @s hotbar.8 minecraft:torch
execute as @a[scores={powerup=3849},team=team1] run effect give @s minecraft:haste 2 1
execute as @a[scores={powerup=3849},team=team1] run effect give @s minecraft:speed 2 2
