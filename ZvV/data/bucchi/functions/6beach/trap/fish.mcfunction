kill @e[type=minecraft:item]
scoreboard players set $RandMax Global 4
function bucchi:random
# 召喚
execute if score $Random Global matches 0 run function bucchi:6beach/trap/1cod
execute if score $Random Global matches 1 run function bucchi:6beach/trap/2salmon
execute if score $Random Global matches 2 run function bucchi:6beach/trap/3tropical_fish
execute if score $Random Global matches 3 run function bucchi:6beach/trap/4pufferfish