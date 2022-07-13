scoreboard players add $anvil1 obj 1
execute if score $anvil1 obj matches 1 run setblock 91 69 110 minecraft:anvil[facing=west]
execute if score $anvil1 obj matches 1 run setblock 90 69 109 minecraft:anvil[facing=north]
execute if score $anvil1 obj matches 60 run scoreboard players set $anvil1 obj 0