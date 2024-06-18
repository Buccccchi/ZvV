execute if score $Time Global matches 1..7 run function bucchi:18barrage/trap/center/level3/left/1_7
execute if score $Time Global matches 18..35 store success score $TrapA Global unless score $TrapA Global matches 1
execute if score $Time Global matches 18..32 if score $TrapA Global matches 1 run function bucchi:18barrage/trap/center/level3/left/18_32
execute if score $Time Global matches 21..35 if score $TrapA Global matches 0 as @a positioned as @s run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.1 2

execute if score $Time Global matches 35 run function bucchi:18barrage/trap/center/level3/left/35
execute if score $Time Global matches 52 run function bucchi:18barrage/trap/center/level3/left/52a
execute if score $Time Global matches 55 run function bucchi:18barrage/trap/center/level3/left/55