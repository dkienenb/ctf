tellraw @s {"translate":"acs.newplayer"}
scoreboard objectives add gamePhase dummy
scoreboard players set @s gamePhase 0

scoreboard players add totalPlayers global 1
scoreboard players set numberTeams constants 2
scoreboard players set @s tmp 0
scoreboard players operation @s tmp = totalPlayers global
scoreboard players operation @s tmp %= numberTeams constants
team join team1 @s[scores={tmp=1..}]
team join team2 @s[scores={tmp=..0}]
execute unless score gameState global matches 1.. run tellraw @a {"translate":"acs.clickme","clickEvent":{"action":"run_command","value":"/trigger confirmed set 1"}}