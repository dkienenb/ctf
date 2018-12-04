execute if entity @s[team=team1] run execute as @e[type=pig,tag=team1base,limit=1] run execute at @s run setblock ~ ~ ~ air
execute if entity @s[team=team1] run execute as @e[type=pig,tag=team1base,limit=1] run kill @s
execute if entity @s[team=team2] run execute as @e[type=pig,tag=team2base,limit=1] run execute at @s run setblock ~ ~ ~ air
execute if entity @s[team=team2] run execute as @e[type=pig,tag=team2base,limit=1] run kill @s
