scoreboard players set arm1 tmp 0
scoreboard players set arm2 tmp 0
execute unless entity @e[limit=1,type=minecraft:pig,tag=team1base] run scoreboard players set arm1 tmp 1
execute unless entity @e[limit=1,type=minecraft:pig,tag=team2base] run scoreboard players set arm2 tmp 1
execute if score arm1 tmp matches 1 run summon minecraft:pig 0 63 6 {NoAI:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["team1base"],DeathLootTable:"minecraft:empty"}
execute if score arm2 tmp matches 1 run summon minecraft:pig 0 63 6 {NoAI:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["team2base"],DeathLootTable:"minecraft:empty"}
# spots before spread
execute if score arm1 tmp matches 1 run tp @e[limit=1,type=minecraft:pig,tag=team1base] 200 63 6
execute if score arm1 tmp matches 1 run tp @e[limit=1,type=minecraft:pig,tag=team2base] -200 63 6
# 160 is spread distance
execute if score arm1 tmp matches 1 run execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run spreadplayers ~ ~ 100 100 true @s
execute if score arm1 tmp matches 1 run execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run spreadplayers ~ ~ 100 100 true @s
execute if score arm1 tmp matches 1 run execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run tp @s ~ 63 ~
execute if score arm1 tmp matches 1 run execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run tp @s ~ 63 ~
effect give @e[limit=1,type=minecraft:pig,tag=team1base] minecraft:invisibility 2 0 true
effect give @e[limit=1,type=minecraft:pig,tag=team2base] minecraft:invisibility 2 0 true
