# 試合準備
gamerule doFireTick true
setblock 99 68 12 minecraft:redstone_block
scoreboard players set $Rotation Global 3
## 炎回転用エンティティ
summon minecraft:marker 102 65 -7 {Tags: ["Fire"]}
summon minecraft:marker 103 65 -8 {Tags: ["Fire"]}
summon minecraft:marker 104 65 -7 {Tags: ["Fire"]}
summon minecraft:marker 105 65 -8 {Tags: ["Fire"]}
summon minecraft:marker 93 65 2 {Tags: ["Fire"]}
summon minecraft:marker 92 65 3 {Tags: ["Fire"]}
summon minecraft:marker 93 65 4 {Tags: ["Fire"]}
summon minecraft:marker 92 65 5 {Tags: ["Fire"]}
## 召喚
scoreboard players set $Standby Global 15
summon minecraft:marker 118 68 -2 {Tags: ["Standby", "Zombie"]}
summon minecraft:marker 82 68 -2 {Tags: ["Standby", "Villager"]}
function bucchi:7rotation/summon