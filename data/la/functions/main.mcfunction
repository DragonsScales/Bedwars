#execute as @a at @s anchored eyes run function la:looking_popup
execute as @a if score @s SummonPopupTower matches 1.. at @s anchored eyes positioned ^ ^ ^ run function la:looking_popup
execute as @a at @s if score @s ClearRedWool matches 1.. run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace ladder
execute as @a at @s if score @s ClearRedWool matches 1.. run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace red_wool
execute as @a at @s if score @s ClearRedWool matches 1.. run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace chest
scoreboard players reset * ClearRedWool