gamerule doFireTick true
setblock -110 65 91 minecraft:fire
setblock -109 65 90 minecraft:fire
setblock -90 65 91 minecraft:fire
setblock -91 65 90 minecraft:fire
setblock -90 69 110 minecraft:fire
setblock -110 69 110 minecraft:fire
#召喚
scoreboard players set $standby obj 10
summon minecraft:armor_stand -82 68 98 {Tags: ["standby", "zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand -118 68 98 {Tags: ["standby", "villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:2nether/summon