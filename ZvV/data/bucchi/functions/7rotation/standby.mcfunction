gamerule doFireTick true
setblock 99 68 12 minecraft:redstone_block
scoreboard players set $Rotation Global 3
#召喚
scoreboard players set $Standby Global 15
summon minecraft:armor_stand 118 68 -2 {Tags: ["Standby", "Zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand 82 68 -2 {Tags: ["Standby", "Villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:7rotation/summon