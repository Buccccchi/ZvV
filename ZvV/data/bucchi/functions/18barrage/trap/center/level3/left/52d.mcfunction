execute positioned as @s run summon minecraft:armor_stand ~ 62 ~ {Tags: ["Center3_2D", "Center3_2", "Position-0.535_0.54", "Arrow"], ArmorItems: [{}, {}, {}, {id: "minecraft:arrow", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
scoreboard players set $RandMax Global 360
execute store result entity @e[limit=1,tag=!Barrage,tag=Center3_2D] Rotation[0] float 1 run function bucchi:random
execute as @e[tag=!Barrage,tag=Center3_2D] at @s positioned ~ 63.49 ~ run teleport @s ^0.535 ^ ^-0.54 ~ 90
tag @e[tag=!Barrage,tag=Center3_2D] add Barrage
execute if score $Trap Global matches 19 run tag @s remove Center3_2C