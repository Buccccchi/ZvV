scoreboard objectives add ID dummy
scoreboard objectives add Health dummy
scoreboard objectives add Jump dummy
scoreboard objectives add Block dummy
team add NoPush
team modify NoPush collisionRule never
gamerule doFireTick true

summon minecraft:marker 200 64 -200 {Tags: ["Surface", "Mirror"]}
summon minecraft:marker 200 64 -200 {Tags: ["Surface"]}
# 召喚
scoreboard players set $Standby Global 10
summon minecraft:marker 218 68 -201 {Tags: ["Standby", "Zombie"]}
summon minecraft:marker 182 68 -201 {Tags: ["Standby", "Villager"]}
function bucchi:20mirror/summon