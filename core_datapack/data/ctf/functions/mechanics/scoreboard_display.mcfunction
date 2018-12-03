execute unless score gamePhase global matches 1.. run scoreboard players set gamePhase global 0
execute if score gamePhase global matches 0 run scoreboard objectives setdisplay sidebar confirmed
execute if score gamePhase global matches 0 run scoreboard objectives setdisplay sidebar.team.blue confirmed
execute if score gamePhase global matches 0 run scoreboard objectives setdisplay sidebar.team.red confirmed

execute if score gamePhase global matches 1 run scoreboard objectives setdisplay sidebar points
execute if score gamePhase global matches 1 run scoreboard objectives setdisplay sidebar.team.blue points_blue
execute if score gamePhase global matches 1 run scoreboard objectives setdisplay sidebar.team.red points_red

scoreboard objectives add health health {"translate":"acs.objective.health"}
scoreboard objectives setdisplay belowName health

scoreboard objectives setdisplay list lives