#召喚
scoreboard players set $Standby Global 15
summon minecraft:armor_stand 18 68 -102 {Tags: ["Standby", "Zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand -18 68 -102 {Tags: ["Standby", "Villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:5desert/summon