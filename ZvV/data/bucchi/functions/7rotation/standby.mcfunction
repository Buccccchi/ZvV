gamerule doFireTick true
setblock 99 68 12 minecraft:redstone_block
scoreboard players set $Rotation Global 3
# 召喚
scoreboard players set $Standby Global 15
summon minecraft:marker 118 68 -2 {Tags: ["Standby", "Zombie"]}
summon minecraft:marker 82 68 -2 {Tags: ["Standby", "Villager"]}
function bucchi:7rotation/summon