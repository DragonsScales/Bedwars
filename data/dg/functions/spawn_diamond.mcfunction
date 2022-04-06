execute as @e[type=armor_stand,tag=diamond_stand] at @s positioned ~ ~-1 ~ unless entity @e[type=item,limit=1,distance=..1,nbt={Tags:["summoned_diamond"]}] run scoreboard players set @s Count 0
execute as @e[type=armor_stand,tag=diamond_stand] store result score @s Count at @s positioned ~ ~-1 ~ run data get entity @e[type=item,limit=1,distance=..1,nbt={Tags:["summoned_diamond"]}] Item.Count

execute as @e[type=armor_stand,tag=diamond_stand] if score @s Count < diamond_max Max at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b},Tags:["summoned_diamond"]}
scoreboard players operation diamond_timer Timer = t_diamond_max Timer