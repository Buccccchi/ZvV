# 召喚
scoreboard players set $RandMax Global 2
function bucchi:random
execute if score $Random Global matches 0 run summon marker ~ ~ ~ {Tags: ["Carry", "Falling", "Redstone", "Tmp"], data: {BlockState: {Name: "minecraft:redstone_block"}}}
execute if score $Random Global matches 1 run summon marker ~ ~ ~ {Tags: ["Carry", "Falling", "Ice", "Tmp"], data: {BlockState: {Name: "minecraft:packed_ice"}}}

# 配置
function bucchi:22carry/trap/carry/place_block
execute positioned as @e[tag=Tmp] run summon falling_block ~ 100 ~ {Tags: ["Tmp2"]}
data modify entity @e[tag=Tmp2,limit=1] BlockState set from entity @e[tag=Tmp,limit=1]
#後々マクロに

tag @e[tag=Tmp] remove Tmp
tag @e[tag=Tmp2] remove Tmp2