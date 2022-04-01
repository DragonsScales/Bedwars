summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["emerald_stand","summoning"],NoGravity:1b}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["floating_emerald","summoning"],NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:emerald_block",Count:1b}]}
summon minecraft:item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["temp"],NoGravity:1b}
execute as @e[type=minecraft:item_frame,tag=temp] run execute at @s run tp @e[type=minecraft:armor_stand,tag=summoning] @s
tag @e[tag=summoning] remove summoning
kill @e[type=minecraft:item_frame,tag=temp]