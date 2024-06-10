# 試合準備

gamerule doFireTick true
setblock -110 65 91 minecraft:fire
setblock -109 65 90 minecraft:fire
setblock -90 65 91 minecraft:fire
setblock -91 65 90 minecraft:fire
setblock -90 69 110 minecraft:fire
setblock -110 69 110 minecraft:fire
## 召喚
scoreboard players set $Standby Global 10
summon minecraft:marker -82 68 98 {Tags: ["Standby", "Zombie"]}
summon minecraft:marker -118 68 98 {Tags: ["Standby", "Villager"]}
function bucchi:2nether/summon