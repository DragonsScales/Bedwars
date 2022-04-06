scoreboard players reset @s right_click
execute at @s run summon fireball ~ ~ ~ {Tags:["fireball","this"],ExplosionPower:2b}
execute anchored eyes positioned ^ ^ ^ run tp @e[type=fireball,tag=fireball,tag=this] ^ ^ ^ ~ ~
execute as @e[type=fireball,tag=fireball,tag=!motion] run function items:fireball/move_fireball