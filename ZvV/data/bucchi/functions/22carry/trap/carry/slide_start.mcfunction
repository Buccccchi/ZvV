# 氷の運搬開始
tag @s add Sliding
tag @s remove Slide

execute positioned as @e[tag=Tmp,sort=random,limit=1] align xyz positioned ~0.5 ~ ~0.5 facing entity @s feet positioned as @s run teleport @s ~ ~ ~ ~ ~
tag @e[tag=Tmp] remove Tmp

summon item_display ~ ~0.5 ~ {Tags: ["Sliding", "Tmp"], Passengers: [{id: "minecraft:item_display", Tags: ["Sliding"], item: {id: "minecraft:packed_ice", Count: 1b}}]}
execute rotated as @s run teleport @e[tag=Tmp] ~ ~0.5 ~ ~ ~
tag @e[tag=Tmp] remove Tmp

setblock ~ ~ ~ air