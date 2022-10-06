summon minecraft:area_effect_cloud 88 66 105 {Tags: ["Trap1"], Duration: 2147483647, Radius: 0f}
summon minecraft:area_effect_cloud 88 66 106 {Tags: ["Trap1"], Duration: 2147483647, Radius: 0f}
summon minecraft:area_effect_cloud 112 66 105 {Tags: ["Trap2"], Duration: 2147483647, Radius: 0f}
summon minecraft:area_effect_cloud 112 66 106 {Tags: ["Trap2"], Duration: 2147483647, Radius: 0f}
#召喚
scoreboard players set $Standby Global 20
summon minecraft:armor_stand 118 68 98 {Tags: ["Standby", "Zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand 82 68 98 {Tags: ["Standby", "Villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:8factory/summon