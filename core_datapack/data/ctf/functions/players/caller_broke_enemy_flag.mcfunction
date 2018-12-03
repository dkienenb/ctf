execute if entity @s[team=team1] run tellraw @a {"translate":"acs.flagbroken","with":[{"translate":"team.team2"},{"selector":"@s"}]}
execute if entity @s[team=team2] run tellraw @a {"translate":"acs.flagbroken","with":[{"translate":"team.team1"},{"selector":"@s"}]}
execute if entity @s[team=team1] run replaceitem entity @s armor.head minecraft:red_banner{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.head minecraft:blue_banner{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
execute as @a run execute at @a run playsound block.end_portal.spawn master @s
execute if entity @s[team=team2] run title @a title {"text":"Blue team flag","color":"blue"}
execute if entity @s[team=team1] run title @a title {"text":"Red team flag","color":"red"}
title @a subtitle [{"text":"broken by "},{"selector":"@s"}]
