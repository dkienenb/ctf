scoreboard objectives add powerup trigger {"translate":"acs.objective.powerup"}
scoreboard players enable @a powerup
scoreboard players add randPow global 1
execute if score randPow global matches 15.. run scoreboard players set randPow global 0