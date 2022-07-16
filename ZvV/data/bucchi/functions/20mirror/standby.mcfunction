scoreboard objectives add id dummy
scoreboard objectives add health dummy
team add nopush
team modify nopush collisionRule never

summon minecraft:marker 200 64 -200 {Tags: ["surface", "mirror"]}
summon minecraft:marker 200 64 -200 {Tags: ["surface"]}
#召喚
scoreboard players set $standby obj 5
summon minecraft:armor_stand 218 68 -201 {Tags: ["standby", "zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand 182 68 -201 {Tags: ["standby", "villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:20mirror/summon