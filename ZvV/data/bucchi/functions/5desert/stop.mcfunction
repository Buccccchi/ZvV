kill @e[tag=!DontKill]
scoreboard players reset * Global
fill 12 69 -102 12 69 -98 minecraft:redstone_block
fill -12 69 -102 -12 69 -98 minecraft:redstone_block

gamerule doDaylightCycle false
time set midnight
clone -5 63 -127 5 69 -117 -5 63 -105
fill -12 68 -88 12 68 -112 minecraft:stone replace minecraft:redstone_block
fill 9 63 -109 -9 63 -91 minecraft:chiseled_sandstone replace minecraft:cave_air
fill -9 64 -91 -6 64 -94 minecraft:sand keep
fill 9 64 -109 6 64 -106 minecraft:sand keep
fill 9 65 -106 9 67 -106 minecraft:cactus
fill 6 65 -109 6 67 -109 minecraft:cactus
fill -6 65 -91 -6 67 -91 minecraft:cactus
fill -9 65 -94 -9 67 -94 minecraft:cactus