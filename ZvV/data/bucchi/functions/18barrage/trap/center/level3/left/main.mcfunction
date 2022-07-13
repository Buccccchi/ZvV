execute if score $time obj matches 1..7 run function bucchi:18barrage/trap/center/level3/left/1_7
execute if score $time obj matches 18..35 store success score $trapA obj unless score $trapA obj matches 1
execute if score $time obj matches 18..32 if score $trapA obj matches 1 run function bucchi:18barrage/trap/center/level3/left/18_32
execute if score $time obj matches 21..35 if score $trapA obj matches 0 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2

execute if score $time obj matches 35 run function bucchi:18barrage/trap/center/level3/left/35
execute if score $time obj matches 52 run function bucchi:18barrage/trap/center/level3/left/52a
execute if score $time obj matches 55 run function bucchi:18barrage/trap/center/level3/left/55