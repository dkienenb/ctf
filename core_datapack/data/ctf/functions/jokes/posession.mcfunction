scoreboard players set @a tmp 0
scoreboard players set @r tmp 1
tellraw @a {"translate":"chat.type.text","with":[{"selector":"@r[scores={tmp=1}]"},{"translate":"acs.message.possessed"}]}
