scoreboard players set $RandMax Global 3
function bucchi:random
execute if score $Random Global matches 0 run summon minecraft:frog 208 65 -96 {Tags: ["Frog"], variant: "minecraft:cold"}
execute if score $Random Global matches 1 run summon minecraft:frog 208 65 -96 {Tags: ["Frog"], variant: "minecraft:temperate"}
execute if score $Random Global matches 2 run summon minecraft:frog 208 65 -96 {Tags: ["Frog"], variant: "minecraft:warm"}
tag @a[limit=1] add StopFrog