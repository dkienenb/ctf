scoreboard players set @a tmp 0
execute as @a[team=team1,nbt={Inventory:[{id:"minecraft:red_banner"}]}] run execute at @e[limit=1,type=minecraft:pig,tag=team1base] run execute if entity @s[distance=..1] run scoreboard players set @s tmp 1
execute as @a[team=team2,nbt={Inventory:[{id:"minecraft:blue_banner"}]}] run execute at @e[limit=1,type=minecraft:pig,tag=team2base] run execute if entity @s[distance=..1] run scoreboard players set @s tmp 1
execute as @a[scores={tmp=1}] run function ctf:players/caller_returned_flag
execute as @a[scores={tmp=1}] run clear @s #minecraft:banners