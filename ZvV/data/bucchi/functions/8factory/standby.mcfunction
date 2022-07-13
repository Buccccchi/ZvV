summon minecraft:area_effect_cloud 88 66 105 {Tags:["trap1"],Duration:2147483647,Radius:0f}
summon minecraft:area_effect_cloud 88 66 106 {Tags:["trap1"],Duration:2147483647,Radius:0f}
summon minecraft:area_effect_cloud 112 66 105 {Tags:["trap2"],Duration:2147483647,Radius:0f}
summon minecraft:area_effect_cloud 112 66 106 {Tags:["trap2"],Duration:2147483647,Radius:0f}
#召喚
scoreboard players set $standby obj 20
summon minecraft:armor_stand 118 68 98 {Tags:["standby","zombie"],Marker:1b,Invisible:1b,Invulnerable:1b}
summon minecraft:armor_stand 82 68 98 {Tags:["standby","villager"],Marker:1b,Invisible:1b,Invulnerable:1b}
function bucchi:8factory/summon