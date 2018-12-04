scoreboard objectives add blueFlagsBroken minecraft.mined:minecraft.blue_banner {"translate":"acs.objective.blueFlagsBroken"}
scoreboard objectives add redFlagsBroken minecraft.mined:minecraft.red_banner {"translate":"acs.objective.redFlagsBroken"}
execute as @a[team=team1,scores={redFlagsBroken=1..}] run function ctf:players/caller_broke_enemy_flag
execute as @a[team=team2,scores={blueFlagsBroken=1..}] run function ctf:players/caller_broke_enemy_flag
scoreboard players set @a blueFlagsBroken 0
scoreboard players set @a redFlagsBroken 0
