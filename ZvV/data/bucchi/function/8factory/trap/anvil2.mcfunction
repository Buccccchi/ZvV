scoreboard players add $Anvil2 Global 1
execute if score $Anvil2 Global matches 1 run setblock 109 69 110 minecraft:anvil[facing=west]
execute if score $Anvil2 Global matches 1 run setblock 110 69 109 minecraft:anvil[facing=south]
execute if score $Anvil2 Global matches 60 run scoreboard players set $Anvil2 Global 0