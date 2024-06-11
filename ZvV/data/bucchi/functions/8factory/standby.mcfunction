# 試合準備
summon minecraft:marker 88 66 105 {Tags: ["Trap1"]}
summon minecraft:marker 88 66 106 {Tags: ["Trap1"]}
summon minecraft:marker 112 66 105 {Tags: ["Trap2"]}
summon minecraft:marker 112 66 106 {Tags: ["Trap2"]}
## 召喚
scoreboard players set $Standby Global 20
summon minecraft:marker 118 68 98 {Tags: ["Standby", "Zombie"]}
summon minecraft:marker 82 68 98 {Tags: ["Standby", "Villager"]}
function bucchi:8factory/summon