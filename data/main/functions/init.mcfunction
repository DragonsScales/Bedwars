scoreboard players reset *

scoreboard objectives add range dummy

#Right click
scoreboard objectives add right_click minecraft.used:carrot_on_a_stick

#Generator Timers
scoreboard objectives add Timer dummy "Timer (s)"
scoreboard players set diamond_timer Timer 600
scoreboard players set emerald_timer Timer 1300
scoreboard players set t_diamond_max Timer 600
scoreboard players set t_emerald_max Timer 1300
scoreboard players set t_forge_max Timer 20

#Max count of items
scoreboard objectives add Max dummy "Max Items"
scoreboard players set diamond_max Max 4
scoreboard players set emerald_max Max 2
scoreboard players set iron_max Max 48
scoreboard players set gold_max Max 20

#Item counts for generators
scoreboard objectives add Count dummy "Items Count"
scoreboard players set diamond_count Count 0
scoreboard players set emerald_count Count 0
scoreboard players set iron_count Count 0
scoreboard players set gold_count Count 0

#remove previous markers and resummon them
kill @e[type=marker,tag=diamond_timer]
kill @e[type=marker,tag=emerald_timer]
kill @e[type=marker,tag=iron_timer]
kill @e[type=marker,tag=gold_timer]
summon marker ~ ~ ~ {Tags:["diamond_timer"]}
summon marker ~ ~ ~ {Tags:["emerald_timer"]}
summon marker ~ ~ ~ {Tags:["iron_timer"]}
summon marker ~ ~ ~ {Tags:["gold_timer"]}

#set markers equal to scoreboard
scoreboard players operation @e[type=marker,tag=diamond_timer] Timer = diamond_timer Timer
scoreboard players operation @e[type=marker,tag=emerald_timer] Timer = emerald_timer Timer
scoreboard players operation @e[type=marker,tag=iron_timer] Timer = iron_timer Timer
scoreboard players operation @e[type=marker,tag=gold_timer] Timer = gold_timer Timer

#Fireball Motions
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy