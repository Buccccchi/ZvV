scoreboard players add $anvil2 obj 1
execute if score $anvil2 obj matches 1 run setblock 109 69 110 minecraft:anvil[facing=west]
execute if score $anvil2 obj matches 1 run setblock 110 69 109 minecraft:anvil[facing=south]
execute if score $anvil2 obj matches 60 run scoreboard players set $anvil2 obj 0