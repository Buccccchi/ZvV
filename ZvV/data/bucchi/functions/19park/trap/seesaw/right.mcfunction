execute if entity @e[tag=seesaw] as @e[x=109,y=66,z=-196,dx=0,dy=0,dz=0] positioned as @s run teleport @s ~ ~1 ~
execute if entity @e[tag=seesaw] as @e[x=109,y=67,z=-196,dx=0,dy=0,dz=0] run data modify entity @s Motion set value [-2.0d, 1.5d, 0.0d]
execute unless entity @e[tag=seesaw] run schedule function bucchi:19park/trap/seesaw/left 20t append
execute unless entity @e[tag=seesaw] run schedule function bucchi:19park/trap/seesaw/end 30t append
teleport @e[tag=seesaw] ~ -64 ~
kill @e[tag=seesaw]
fill 106 65 -196 108 66 -196 minecraft:air replace minecraft:barrier
setblock 109 66 -196 minecraft:oak_slab[type=top]
setblock 108 66 -196 minecraft:barrier
setblock 106 65 -196 minecraft:barrier
fill 106 66 -196 105 66 -196 minecraft:air
summon minecraft:falling_block 108 65.75 -196 {Tags: ["seesaw"], NoGravity: 1b, Time: -2147483648, BlockState: {Name: "minecraft:oak_slab", Properties: {type: "top"}}}
summon minecraft:falling_block 106 65.25 -196 {Tags: ["seesaw"], NoGravity: 1b, Time: -2147483648, BlockState: {Name: "minecraft:oak_slab", Properties: {type: "top"}}}
summon minecraft:falling_block 105 65 -196 {Tags: ["seesaw"], NoGravity: 1b, Time: -2147483648, BlockState: {Name: "minecraft:oak_slab", Properties: {type: "top"}}}
summon minecraft:shulker 105 -64 -196 {Tags: ["seesaw"], NoAI: 1b, Silent: 1b, Invulnerable: 1b, ActiveEffects: [{Id: 14, Amplifier: 0b, Duration: 2147483647, ShowParticles: 0b}]}
teleport @e[tag=seesaw,type=minecraft:shulker] 105 65 -196