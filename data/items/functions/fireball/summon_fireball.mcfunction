scoreboard players reset @s right_click
summon fireball ~ ~ ~ {Tags:["fireball","this"],ExplosionPower:2b}
tp @e[type=fireball,tag=fireball,tag=this] ^ ^ ^ ~ ~
execute as @e[type=fireball,tag=fireball,tag=!motion] run function items:fireball/move_fireball