summon minecraft:area_effect_cloud ~ ~2 ~ {Tags: ["Potion1"], Particle: "minecraft:dragon_breath", ReapplicationDelay: 20, Radius: 2.0f, Duration: 100, Effects: [{Id: 6, Amplifier: 0b, Duration: 1, ShowParticles: 0b}]}
setblock ~ ~2 ~ minecraft:air
execute unless score $Potion1 Global matches 4 run scoreboard players add $Potion1 Global 1
execute if score $Potion1 Global matches 1 run setblock -101 63 -110 minecraft:redstone_block
execute if score $Potion1 Global matches 2 run setblock -100 63 -110 minecraft:redstone_block
execute if score $Potion1 Global matches 3 run setblock -99 63 -110 minecraft:redstone_block
execute if score $Potion1 Global matches 3 run summon minecraft:arrow -100 71 -100 {Motion: [1.2d, 0.0d, -1.2d]}