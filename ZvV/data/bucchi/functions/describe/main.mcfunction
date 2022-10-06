#execute if entity @a[scores={carrot=1}] run scoreboard players add $describe obj 1
#, Attributes: [{Name: "minecraft:generic.movement_speed", Base: 0.0d}]
execute if entity @a[scores={Carrot=1}] run summon minecraft:armor_stand 93.0 67.7 -192 {Tags:["Swing"], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
scoreboard players set @a Carrot 0