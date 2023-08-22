function generators:eg/functions/turn_generator
scoreboard players remove emerald_timer Timer 1
scoreboard players operation @e[type=marker,tag=emerald_timer] Timer = emerald_timer Timer
execute as @e[type=marker,tag=emerald_timer,limit=1] if predicate main:can_spawn_diamond run function generators:eg/functions/spawn_emerald