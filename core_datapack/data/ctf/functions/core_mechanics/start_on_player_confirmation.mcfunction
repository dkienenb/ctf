scoreboard objectives add confirmed trigger {"translate":"acs.objective.confirmed"}
execute unless score gameState global matches 1.. run scoreboard players set gameState global 0
execute if score gameState global matches 0 run scoreboard players enable @a confirmed
execute if score gameState global matches 0 if entity @a unless entity @a[scores={confirmed=0}] run scoreboard players set gamePhase global 1
