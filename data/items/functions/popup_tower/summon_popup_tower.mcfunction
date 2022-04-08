summon armor_stand ^ ^ ^ {Tags:["popup","this"],NoGravity:1b,Invisible:0b}
tp @e[tag=popup,tag=this] ^ ^ ^ ~ 0
tag @e[tag=popup,tag=this] remove this
execute as @e[type=armor_stand,tag=popup] run execute store result score @s rotation run data get entity @s Rotation[0]
#execute as @e[type=armor_stand,tag=popup] at @s run function items:popup_tower/popup_north
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches 135..180 at @s run say north
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches -180..-135 at @s run say north
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches -135..-45 at @s run say east
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches 45..135 at @s run say west
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches -45..45 at @s run say south

execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches 135..180 at @s run tp @s ~ ~ ~ 180 0
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches -180..-135 at @s run tp @s ~ ~ ~ 180 0
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches -45..45 at @s run tp @s ~ ~ ~ 0 0
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches -135..-45 at @s run tp @s ~ ~ ~ -90 0
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches 45..135 at @s run tp @s ~ ~ ~ 90 0

execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches 135..180 at @s run function items:popup_tower/popup_north
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches -180..-135 at @s run function items:popup_tower/popup_north
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches -45..45 at @s run function items:popup_tower/popup_south
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches -135..-45 at @s run function items:popup_tower/popup_east
execute as @e[type=armor_stand,tag=popup] at @s if score @s rotation matches 45..135 at @s run function items:popup_tower/popup_west