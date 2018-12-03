# +X
#
# *A*
# C D   +Z
# *B*
#

# Blue
# A
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~1 ~-1 ~1 ~1 ~-1 ~-1 blue_concrete

# B
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~-1 ~-1 ~1 ~-1 ~-1 ~-1 blue_concrete

# C
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~1 ~-1 ~-1 ~-1 ~-1 ~-1 blue_concrete

# D
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~1 blue_concrete

# Beacon
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run execute unless block ~ ~-1 ~ beacon run setblock ~ ~-1 ~ beacon
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 diamond_block

# Air
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~1 ~ ~1 ~-1 ~3 ~-1 air
# A
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~1 ~ ~1 ~1 ~ ~-1 air

# B
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~-1 ~ ~1 ~-1 ~ ~-1 air

# C
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~1 ~ ~-1 ~-1 ~ ~-1 air

# D
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~1 ~ ~1 ~-1 ~ ~1 air

# Flag
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run setblock ~ ~ ~ blue_banner

# Shaft
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run setblock ~ ~4 ~ blue_stained_glass
execute as @e[limit=1,type=minecraft:pig,tag=team1base] run execute at @s run fill ~ ~5 ~ ~ 255 ~ air destroy

# Red
# A
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~1 ~-1 ~1 ~1 ~-1 ~-1 red_concrete

# B
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~-1 ~-1 ~1 ~-1 ~-1 ~-1 red_concrete

# C
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~1 ~-1 ~-1 ~-1 ~-1 ~-1 red_concrete

# D
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~1 red_concrete

# Beacon
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run execute unless block ~ ~-1 ~ beacon run setblock ~ ~-1 ~ beacon
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 diamond_block

# Air
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~1 ~ ~1 ~-1 ~3 ~-1 air
# A
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~1 ~ ~1 ~1 ~ ~-1 air

# B
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~-1 ~ ~1 ~-1 ~ ~-1 air

# C
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~1 ~ ~-1 ~-1 ~ ~-1 air

# D
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~1 ~ ~1 ~-1 ~ ~1 air

# Flag
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run setblock ~ ~ ~ red_banner

# Shaft
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run setblock ~ ~4 ~ red_stained_glass
execute as @e[limit=1,type=minecraft:pig,tag=team2base] run execute at @s run fill ~ ~5 ~ ~ 255 ~ air destroy
