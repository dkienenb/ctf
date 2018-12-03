scoreboard players set @s[team=team1] tmp 1
scoreboard players set @s[team=team2] tmp 2
team join team1 @s[scores={tmp=2}]
team join team2 @s[scores={tmp=1}]
