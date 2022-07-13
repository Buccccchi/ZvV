#召喚
scoreboard players set $standby obj 15
summon minecraft:armor_stand 18 68 -102 {Tags: ["standby", "zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand -18 68 -102 {Tags: ["standby", "villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:5desert/summon