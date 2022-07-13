#召喚
scoreboard players set $standby obj 10
summon minecraft:armor_stand 18 68 98 {Tags: ["standby", "zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand -18 68 98 {Tags: ["standby", "villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:1survival/summon