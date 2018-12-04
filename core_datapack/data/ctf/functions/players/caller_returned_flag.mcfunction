execute if entity @s[team=team1] run tellraw @a {"translate":"chat.type.text","with":[{"translate:"acs.name"},{"translate":"acs.flagcapture","with":[{"translate":"team.team2"},{"selector":"@s"}]}]}
execute if entity @s[team=team2] run tellraw @a {"translate":"chat.type.text","with":[{"translate:"acs.name"},{"translate":"acs.flagcapture","with":[{"translate":"team.team1"},{"selector":"@s"}]}]}
execute if entity @s[team=team1] run scoreboard players add BlueTeam points 1
execute if entity @s[team=team2] run scoreboard players add RedTeam points 1
execute if entity @s[team=team1] run tellraw @a {"translate":"chat.type.text","with":[{"translate:"acs.name"},{"translate":"acs.morelives","with":[{"translate":"team.team1"},{"translate":"enchantment.level.3"}]}]}
execute if entity @s[team=team2] run tellraw @a {"translate":"chat.type.text","with":[{"translate:"acs.name"},{"translate":"acs.morelives","with":[{"translate":"team.team2"},{"translate":"enchantment.level.3"}]}]}
execute if entity @s[team=team1] run scoreboard players remove @a[team=team1] deaths 3
execute if entity @s[team=team2] run scoreboard players remove @a[team=team2] deaths 3
advancement grant @s only ctf:return_enemy_flag