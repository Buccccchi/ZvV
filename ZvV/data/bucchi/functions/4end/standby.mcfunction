summon minecraft:end_crystal -90 69 -110
summon minecraft:end_crystal -110 69 -90
summon minecraft:enderman -100 71 -100 {NoAI: 1b, Invulnerable: 1b, Rotation: [180.0f, 0.0f]}
#召喚
scoreboard players set $standby obj 20
summon minecraft:armor_stand -82 68 -102 {Tags: ["standby", "zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand -118 68 -102 {Tags: ["standby", "villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:4end/summon