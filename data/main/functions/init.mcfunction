scoreboard players reset @e

scoreboard objectives add Timer dummy "Timer (s)"
scoreboard players set diamond_timer Timer 600
scoreboard players set emerald_timer Timer 1300
scoreboard players set t_diamond_max Timer 600
scoreboard players set t_emerald_max Timer 1300

scoreboard objectives add Max dummy "Max Items"
scoreboard players set diamond_max Max 4
scoreboard players set emerald_max Max 2

scoreboard objectives add Count dummy "Items Count"
scoreboard players set diamond_count Count 0
scoreboard players set emerald_count Count 0

kill @e[type=marker,tag=diamond_timer]
kill @e[type=marker,tag=emerald_timer]
summon marker ~ ~ ~ {Tags:["diamond_timer"]}
summon marker ~ ~ ~ {Tags:["emerald_timer"]}
scoreboard players operation @e[type=marker,tag=diamond_timer] Timer = diamond_timer Timer
scoreboard players operation @e[type=marker,tag=emerald_timer] Timer = emerald_timer Timer

tellraw @a {"text":"Bedwars-Gens Succesfully Loaded!", "color":"#00ff00"}