execute if entity @s[team=team1] run tellraw @a {"translate":"chat.type.text","with:[{"translate":"acs.name"},{"translate":"acs.message.flagbroken","with":[{"translate":"team.team2"},{"selector":"@s"}]}]}
execute if entity @s[team=team1] run tellraw @a {"translate":"chat.type.text","with:[{"translate":"acs.name"},{"translate":"acs.message.flagbroken","with":[{"translate":"team.team2"},{"selector":"@s"}]}]}
execute if entity @s[team=team1] run replaceitem entity @s armor.head minecraft:red_banner{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.head minecraft:blue_banner{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
execute as @a run execute at @a run playsound block.end_portal.spawn master @s
execute if entity @s[team=team2] run title @a title {"title":"acs.title.flagbroken","with":[{"translate":"team.team1"}]}
execute if entity @s[team=team1] run title @a title {"title":"acs.title.flagbroken","with":[{"translate":"team.team2"}]}
title @a subtitle {"title":"acs.subtitle.flagbroken","with":[{"selector":"@s"}]}
