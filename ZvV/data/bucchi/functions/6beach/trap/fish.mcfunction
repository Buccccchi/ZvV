kill @e[type=minecraft:item]
loot replace block 0 16 0 container.0 loot bucchi:random/4
#召喚
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 1b}]} run function bucchi:6beach/trap/1cod
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 2b}]} run function bucchi:6beach/trap/2salmon
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 3b}]} run function bucchi:6beach/trap/3tropical_fish
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 4b}]} run function bucchi:6beach/trap/4pufferfish