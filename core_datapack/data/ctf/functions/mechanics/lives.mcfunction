scoreboard objectives add lives dummy {"translate":"acs.objective.lives"}
scoreboard objectives add deaths deathCount {"translate":"acs.objective.deaths"}
scoreboard players set maxLives constants 10

scoreboard players set @a lives 0
scoreboard players set @a tmp 0
execute as @a run scoreboard players operation @s tmp += @s deaths
execute as @a run scoreboard players operation @s deaths = @s tmp
scoreboard players operation @a tmp = maxLives constants
execute as @a run scoreboard players operation @s tmp -= @s deaths
execute as @a run scoreboard players operation @s lives = @s tmp
execute unless entity @a[scores={lives=1..}] run scoreboard players set @a deaths 0