scoreboard players reset @s SummonPopupTower
execute if block ~ ~ ~ chest{Items:[{Slot:0b,id:"minecraft:red_wool",Count:1b,tag:{Tags:["summon_tower"]}}]} at @s run summon armor_stand ~ ~ ~ {Tags:["popup"],NoGravity:1b,Invisible:1b}
tp @e[tag=popup] ~ ~ ~ ~ 0
execute if block ~ ~ ~ chest{Items:[{Slot:0b,id:"minecraft:red_wool",Count:1b,tag:{Tags:["summon_tower"]}}]} run function items:popup_tower
execute if block ~ ~ ~ chest{Items:[{Slot:0b,id:"minecraft:red_wool",Count:1b,tag:{Tags:["summon_tower"]}}]} run setblock ~ ~ ~ air
execute if block ~ ~ ~ air positioned ^ ^ ^0.01 run function la:looking_popup