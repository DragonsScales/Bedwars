summon item_frame ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["align"]}
execute as @e[type=item_frame,tag=align] at @s run summon armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:0b,Tags:["emerald_stand"],NoGravity:1b,DisabledSlots:2096896,ArmorItems:[{},{},{},{id:"minecraft:emerald_block",Count:1b}]}
kill @e[type=item_frame,tag=align]