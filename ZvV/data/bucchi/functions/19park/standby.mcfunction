team add park
summon minecraft:tropical_fish 107 64.7 -195.75 {Variant: 0, NoAI: 1b, Silent: 1b, Invulnerable: 1b, ActiveEffects: [{Id: 14, Amplifier: 0b, Duration: 2147483647, ShowParticles: 0b}]}
summon minecraft:tropical_fish 107 64.7 -195.25 {Variant: 0, NoAI: 1b, Silent: 1b, Invulnerable: 1b, ActiveEffects: [{Id: 14, Amplifier: 0b, Duration: 2147483647, ShowParticles: 0b}]}
summon minecraft:armor_stand 93.31 66.5 -192 {Tags: ["swing1", "swingA"], ArmorItems: [{}, {}, {}, {id: "minecraft:spruce_trapdoor", Count: 1b}], NoGravity: 1b, Invisible: 1b, NoBasePlate: 1b, Rotation: [90.0f, 0.0f], Pose: {Body: [-90.0f, 0.0f, 0.0f], Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
summon minecraft:armor_stand 92.69 66.5 -192 {Tags: ["swing2", "swingA"], ArmorItems: [{}, {}, {}, {id: "minecraft:spruce_trapdoor", Count: 1b}], NoGravity: 1b, Invisible: 1b, NoBasePlate: 1b, Rotation: [90.0f, 0.0f], Pose: {Body: [90.0f, 0.0f, 0.0f], Head: [180.0f, 0.0f, 0.0f], LeftLeg: [180.0f, 0.0f, 0.0f], RightLeg: [180.0f, 0.0f, 0.0f]}}
summon minecraft:turtle 93 67.9 -191.65 {Tags: ["swing3"], Leash: {X: 93, Y: 70, Z: -192}, Age: -2147483648, NoAI: 1b, Silent: 1b, Invulnerable: 1b, ActiveEffects: [{Id: 14, Amplifier: 0b, Duration: 2147483647, ShowParticles: 0b}]}
summon minecraft:turtle 92 67.9 -191.65 {Tags: ["swing4"], Leash: {X: 92, Y: 70, Z: -192}, Age: -2147483648, NoAI: 1b, Silent: 1b, Invulnerable: 1b, ActiveEffects: [{Id: 14, Amplifier: 0b, Duration: 2147483647, ShowParticles: 0b}]}
#召喚
scoreboard players set $standby Global 20
summon minecraft:armor_stand 118 68 -201 {Tags: ["standby", "zombie"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
summon minecraft:armor_stand 82 70 -201 {Tags: ["standby", "villager"], Marker: 1b, Invisible: 1b, Invulnerable: 1b}
function bucchi:19park/summon