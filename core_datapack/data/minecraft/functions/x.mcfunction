execute as @a run function ctf:players/teleport_caller_to_spread_point
tag dkienenb add admin
tellraw @a[tag=admin] {"translate":"team.team1","clickEvent":{"action":"run_command","value":"/execute as @e[type=pig,tag=team1base] run forceload add ~ ~"}}
tellraw @a[tag=admin] {"translate":"team.team2","clickEvent":{"action":"run_command","value":"/execute as @e[type=pig,tag=team2base] run forceload add ~ ~"}}
