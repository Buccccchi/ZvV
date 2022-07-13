execute if score $time obj matches 1..40 run function bucchi:18barrage/trap/center/level2/top/1_40
execute if score $time obj matches 4..43 unless score $trap obj matches 1.. as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2
execute if score $time obj matches 41 unless score $trap obj matches 1.. at @e[tag=main] run function bucchi:18barrage/trap/center/level2/top/41
execute if score $time obj matches 57 as @e[tag=center2_4,tag=tear,tag=!straight0.2] at @s run teleport @s ^ ^1.49 ^-0.76 ~ 0
execute if score $time obj matches 57 as @e[tag=center2_4,tag=block,tag=!scale5] at @s run teleport @s ~ 65 ~ ~ ~
execute if score $time obj matches 60 run function bucchi:18barrage/trap/center/level2/top/60
execute if score $time obj matches 77 as @e[tag=center2_4,tag=tear,tag=!straight0.2] at @s run teleport @s ^ ^1.49 ^-0.76 ~ 0
execute if score $time obj matches 80 run function bucchi:18barrage/trap/center/level2/top/80