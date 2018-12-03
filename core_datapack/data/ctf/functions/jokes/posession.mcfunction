scoreboard players set @a tmp 0
scoreboard players set @r tmp 1
tellraw @a ["",{"text":"<"},{"selector":"@r[scores={tmp=1}]"},{"text":"> "},{"translate":"acs.possessed"}]
