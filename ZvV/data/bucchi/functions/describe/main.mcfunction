#execute if entity @a[scores={Carrot=1}] run scoreboard players add $Describe Global 1
#, Attributes: [{Name: "minecraft:generic.movement_speed", Base: 0.0d}]
execute if entity @a[scores={Carrot=1}] run summon minecraft:villager 200 66 -107 {Rotation: [180f, 0f], Attributes: [{Name: "minecraft:generic.movement_speed", Base: 0.0d}]}
scoreboard players set @a Carrot 0