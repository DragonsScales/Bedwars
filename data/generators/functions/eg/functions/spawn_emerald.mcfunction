execute as @e[type=armor_stand,tag=emerald_stand] at @s positioned ~ ~-1 ~ unless entity @e[type=item,limit=1,distance=..1,nbt={Tags:["summoned_emerald"]}] run scoreboard players set @s Count 0
execute as @e[type=armor_stand,tag=emerald_stand] store result score @s Count at @s positioned ~ ~-1 ~ run data get entity @e[type=item,limit=1,distance=..1,nbt={Tags:["summoned_emerald"]}] Item.Count

execute as @e[type=armor_stand,tag=emerald_stand] if score @s Count < emerald_max Max at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b},Tags:["summoned_emerald"]}
scoreboard players operation emerald_timer Timer = t_emerald_max Timer