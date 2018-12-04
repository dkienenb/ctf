scoreboard objectives add respawnKit trigger "Respawn Kit"
execute as @a[scores={health=..0}] run tag @s add dead
execute as @a[scores={health=1..},tag=dead] run scoreboard players enable @s respawnKit
execute as @a[scores={health=1..},tag=dead] run tellraw @s {"text":"Select respawn kit:"}
execute as @a[scores={health=1..},tag=dead] run tellraw @s {"text":"Combat","clickEvent":{"action":"run_command","value":"/trigger respawnKit set 1"}}
execute as @a[scores={health=1..},tag=dead] run tellraw @s {"text":"Archery","clickEvent":{"action":"run_command","value":"/trigger respawnKit set 2"}}
execute as @a[scores={health=1..},tag=dead] run tellraw @s {"text":"Storage","clickEvent":{"action":"run_command","value":"/trigger respawnKit set 3"}}
execute as @a[scores={health=1..},tag=dead] run tellraw @s {"text":"Atlas","clickEvent":{"action":"run_command","value":"/trigger respawnKit set 4"}}
execute as @a[scores={health=1..},tag=dead] run tellraw @s {"text":"Tools","clickEvent":{"action":"run_command","value":"/trigger respawnKit set 5"}}
execute as @a[scores={health=1..},tag=dead] run tellraw @s {"text":"Food","clickEvent":{"action":"run_command","value":"/trigger respawnKit set 6"}}
execute as @a[scores={health=1..},tag=dead] run tag @s remove dead

# 1 Combat
execute as @a[scores={respawnKit=1}] run give @s stone_sword
execute as @a[scores={respawnKit=1}] run give @s shield
execute as @a[scores={respawnKit=1}] run give @s leather_helmet
execute as @a[scores={respawnKit=1}] run give @s leather_chestplate
execute as @a[scores={respawnKit=1}] run give @s leather_leggings
execute as @a[scores={respawnKit=1}] run give @s leather_boots

# 2 Archery
execute as @a[scores={respawnKit=2}] run give @s bow
execute as @a[scores={respawnKit=2}] run give @s arrow 10

# 3 Storage
execute as @a[scores={respawnKit=3}] run give @s crafting_table
execute as @a[scores={respawnKit=3}] run give @s dropper 6
execute as @a[scores={respawnKit=3}] run give @s hopper 10
execute as @a[scores={respawnKit=3}] run give @s furnace 3
execute as @a[scores={respawnKit=3}] run give @s purple_shulker_box
execute as @a[scores={respawnKit=3}] run give @s white_shulker_box
execute as @a[scores={respawnKit=3}] run give @s chest 10

# 4 Atlas
execute as @a[scores={respawnKit=4}] run give @s map 8
execute as @a[scores={respawnKit=4}] run give @s compass
execute as @a[scores={respawnKit=4}] run give @s paper 24

# 5 Tools
execute as @a[scores={respawnKit=5}] run give @s diamond_pickaxe
execute as @a[scores={respawnKit=5}] run give @s iron_axe
execute as @a[scores={respawnKit=5}] run give @s iron_shovel
execute as @a[scores={respawnKit=5}] run give @s diamond_hoe
execute as @a[scores={respawnKit=5}] run give @s flint_and_steel
execute as @a[scores={respawnKit=5}] run give @s obsidian 25

# 6 Food
execute as @a[scores={respawnKit=6}] run give @s apple 40
execute as @a[scores={respawnKit=6}] run effect give @s saturation 30 30 true

execute as @a[scores={respawnKit=1..}] run scoreboard players set @s respawnKit 0 
