function generators:dg/functions/turn_generator
scoreboard players remove diamond_timer Timer 1
scoreboard players operation @e[type=marker,tag=diamond_timer] Timer = diamond_timer Timer
execute as @e[type=marker,tag=diamond_timer,limit=1] if predicate main:can_spawn_diamond run function generators:dg/functions/spawn_diamond