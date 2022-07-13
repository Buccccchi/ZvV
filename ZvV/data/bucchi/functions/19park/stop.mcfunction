team remove park
execute as @e[type=minecraft:turtle] run data remove entity @s Leash
schedule clear bucchi:19park/trap/seesaw/left
schedule clear bucchi:19park/trap/seesaw/right
schedule clear bucchi:19park/trap/seesaw/end
fill 106 65 -196 108 66 -196 minecraft:air replace minecraft:barrier
fill 105 66 -196 109 66 -196 minecraft:oak_slab
fill 91 64 -209 94 64 -207 minecraft:sand

kill @e[tag=!dontkill]
scoreboard players reset * obj
fill 111 67 -201 111 68 -199 minecraft:oak_leaves[persistent=true]
fill 89 69 -201 89 70 -199 minecraft:oak_leaves[persistent=true]