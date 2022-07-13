gamerule doFireTick true
setblock 99 68 12 minecraft:redstone_block
scoreboard players set $rotation obj 3
#召喚
scoreboard players set $standby obj 15
summon minecraft:armor_stand 118 68 -2 {Tags: ["standby", "zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand 82 68 -2 {Tags: ["standby", "villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:7rotation/summon