time set noon
gamerule mobGriefing true
#召喚
scoreboard players set $standby obj 30
summon minecraft:armor_stand 82 68 -110 {Tags: ["standby", "zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand 118 68 -94 {Tags: ["standby", "villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:6beach/summon