summon minecraft:armor_stand 100 69 -194.0 {Tags:["slide"], Small: 1b, Invisible: 1b, Marker: 1b, NoBasePlate: 1b, Pose: {Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}, Passengers: [{id: "minecraft:zombie", Tags: ["start"], Team: "park", IsBaby: 1b, Rotation: [180.0f, 0.0f]}]}
data modify entity @e[tag=start,limit=1] Health set from entity @s Health
tag @e[tag=start,limit=1] remove start
teleport @s ~ -64 ~
kill @s