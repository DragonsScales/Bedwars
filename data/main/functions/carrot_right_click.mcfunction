execute as @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{fireball:1b}} at @s anchored eyes positioned ^ ^ ^ run function items:fireball/summon_fireball
execute as @s if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",tag:{clear_wool:1b}} at @s run function items:clear_wool
scoreboard players reset @s right_click