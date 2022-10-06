kill @e[type=minecraft:item]
execute store result score $Random Global run function bucchi:random
scoreboard players set $Temp Global 4
scoreboard players operation $Random Global %= $Temp Global
#召喚
execute if score $Random Global matches 0 run function bucchi:6beach/trap/1cod
execute if score $Random Global matches 1 run function bucchi:6beach/trap/2salmon
execute if score $Random Global matches 2 run function bucchi:6beach/trap/3tropical_fish
execute if score $Random Global matches 3 run function bucchi:6beach/trap/4pufferfish