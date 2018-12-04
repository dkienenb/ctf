bossbar add ctf:a_book_reminder ""
bossbar set ctf:a_book_reminder name {"translate":"acs.bossbar.book"}
bossbar set ctf:a_book_reminder value 100
bossbar set ctf:a_book_reminder players @a
bossbar set ctf:a_book_reminder color green
bossbar set ctf:a_book_reminder visible true

bossbar add ctf:blue_flag_meter ""
bossbar set ctf:blue_flag_meter name {"translate":"acs.bossbar.flag","with":[{"translate":"team.team1"}]}
bossbar set ctf:blue_flag_meter value 100
bossbar set ctf:blue_flag_meter players @a
bossbar set ctf:blue_flag_meter color blue

bossbar add ctf:red_flag_meter ""
bossbar set ctf:red_flag_meter name {"translate":"acs.bossbar.flag","with":[{"translate":"team.team2"}]}
bossbar set ctf:red_flag_meter value 100
bossbar set ctf:red_flag_meter players @a
bossbar set ctf:red_flag_meter color red

execute unless entity @a[nbt={Inventory:[{id:"minecraft:red_banner"}]}] run bossbar set ctf:red_flag_meter visible false
execute if entity @a[nbt={Inventory:[{id:"minecraft:red_banner"}]}] run bossbar set ctf:red_flag_meter visible true
execute unless entity @a[nbt={Inventory:[{id:"minecraft:blue_banner"}]}] run bossbar set ctf:blue_flag_meter visible false
execute if entity @a[nbt={Inventory:[{id:"minecraft:blue_banner"}]}] run bossbar set ctf:blue_flag_meter visible true

execute as @a run title @a actionbar [{"translate":"acs.objective.lives"},": ",{"score":{"name":"*","objective":"lives"}},"/",{"score":{"name":"maxLives","objective":"constants"}}]