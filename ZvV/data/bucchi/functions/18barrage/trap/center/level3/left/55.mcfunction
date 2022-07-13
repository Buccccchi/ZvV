execute if score $trapA obj matches 1 as @a positioned as @s run playsound minecraft:entity.ender_dragon.shoot master @s ~ ~ ~ 0.3 1
execute if score $trap obj matches 2..19 run effect give @e[tag=center3_2D,tag=!change] minecraft:glowing 1000000 0 true
execute if score $trap obj matches 2..19 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $trap obj matches 1..22 run scoreboard players set $time obj 50
execute if score $time obj matches 55 run function bucchi:18barrage/trap/center/end