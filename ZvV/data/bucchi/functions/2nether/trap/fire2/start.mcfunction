setblock ~ ~2 ~ minecraft:air
execute positioned ~-1 ~1.5 ~-1 run tag @e[type=minecraft:zombie,dx=1,dy=0,dz=1] add fire2
tag @e[tag=fire2] add fire
schedule function bucchi:2nether/trap/fire2/end 3s append