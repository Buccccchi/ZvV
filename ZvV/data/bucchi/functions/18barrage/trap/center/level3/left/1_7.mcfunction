execute if score $time obj matches 1 run function bucchi:18barrage/trap/center/level3/left/1
execute positioned as @e[tag=!barrage,tag=center3_2A] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["center3_2", "position-0.535_0.54", "arrow"], ArmorItems: [{}, {}, {}, {id: "minecraft:spectral_arrow", Count: 1b}], Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Fire: 32767s, Pose: {Head: [90.0f, 45.0f, 0.0f]}}
scoreboard players add @e[tag=!barrage,tag=center3_2] obj 1
execute if entity @e[tag=!barrage,tag=center3_2A,tag=right] as @e[tag=!barrage,tag=center3_2,scores={obj=1}] positioned as @s rotated as @e[limit=1,sort=nearest,tag=!barrage,tag=center3_2,scores={obj=2}] rotated ~-18 0 positioned ~ 63.49 ~ run teleport @s ^0.535 ^ ^-1 ~ 0
execute if entity @e[tag=!barrage,tag=center3_2A,tag=!right] as @e[tag=!barrage,tag=center3_2,scores={obj=1}] positioned as @s rotated as @e[limit=1,sort=nearest,tag=!barrage,tag=center3_2,scores={obj=2}] rotated ~18 0 positioned ~ 63.49 ~ run teleport @s ^0.535 ^ ^-1 ~ 0
execute as @e[tag=!barrage,tag=center3_2A,scores={obj=8}] at @s positioned ~ 63.49 ~ run teleport @s ^0.535 ^ ^-1