scoreboard objectives add points dummy {"translate":"acs.objective.points"}
scoreboard objectives add points_blue dummy {"translate":"acs.objective.points"}
scoreboard objectives add points_red dummy {"translate":"acs.objective.points"}
scoreboard players set winPoints constants 5

execute unless score NeededToWin points matches 1.. run scoreboard players set NeededToWin points 0
execute unless score BlueTeam points matches 1.. run scoreboard players set BlueTeam points 0
execute unless score RedTeam points matches 1.. run scoreboard players set RedTeam points 0
scoreboard players operation NeededToWin points = winPoints constants

scoreboard players operation NeededToWin points_blue = NeededToWin points
scoreboard players operation EnemyTeam points_blue = RedTeam points
scoreboard players operation OwnTeam points_blue = BlueTeam points

scoreboard players operation NeededToWin points_red = NeededToWin points
scoreboard players operation EnemyTeam points_red = BlueTeam points
scoreboard players operation OwnTeam points_red = RedTeam points
