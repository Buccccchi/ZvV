scoreboard objectives remove id
scoreboard objectives remove health
scoreboard objectives remove jump
scoreboard objectives remove block
team remove nopush
gamerule doFireTick false
tag @a remove stop

setblock 200 66 -214 minecraft:stone
setblock 208 65 -192 minecraft:smooth_quartz_slab
setblock 192 65 -208 minecraft:smooth_quartz_slab
fill 190 66 -210 210 66 -190 minecraft:air replace minecraft:diamond_block
fill 190 65 -210 210 66 -190 minecraft:air replace minecraft:fire
data modify block 191 65 -194 Items set value [{Slot: 0b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 1b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 2b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 3b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 4b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 5b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 6b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 7b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 8b, id: "minecraft:fire_charge", Count: 64b}]
data modify block 194 65 -191 Items set value [{Slot: 0b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 1b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 2b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 3b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 4b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 5b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 6b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 7b, id: "minecraft:fire_charge", Count: 64b}, {Slot: 8b, id: "minecraft:fire_charge", Count: 64b}]
data modify block 209 65 -206 Items set value [{Slot: 0b, id: "minecraft:arrow", Count: 64b}, {Slot: 1b, id: "minecraft:arrow", Count: 64b}, {Slot: 2b, id: "minecraft:arrow", Count: 64b}, {Slot: 3b, id: "minecraft:arrow", Count: 64b}, {Slot: 4b, id: "minecraft:arrow", Count: 64b}, {Slot: 5b, id: "minecraft:arrow", Count: 64b}, {Slot: 6b, id: "minecraft:arrow", Count: 64b}, {Slot: 7b, id: "minecraft:arrow", Count: 64b}, {Slot: 8b, id: "minecraft:arrow", Count: 64b}]
data modify block 206 65 -209 Items set value [{Slot: 0b, id: "minecraft:arrow", Count: 64b}, {Slot: 1b, id: "minecraft:arrow", Count: 64b}, {Slot: 2b, id: "minecraft:arrow", Count: 64b}, {Slot: 3b, id: "minecraft:arrow", Count: 64b}, {Slot: 4b, id: "minecraft:arrow", Count: 64b}, {Slot: 5b, id: "minecraft:arrow", Count: 64b}, {Slot: 6b, id: "minecraft:arrow", Count: 64b}, {Slot: 7b, id: "minecraft:arrow", Count: 64b}, {Slot: 8b, id: "minecraft:arrow", Count: 64b}]

kill @e[tag=!dontkill]
scoreboard players reset * Global
fill 212 69 -201 212 69 -199 minecraft:redstone_block
fill 188 69 -201 188 69 -199 minecraft:redstone_block