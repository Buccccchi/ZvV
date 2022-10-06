scoreboard players add $swing Global 1
execute if score $swing Global matches 1..6 as @e[tag=swing,limit=1] rotated as @s rotated ~ ~-7.5 positioned 93.0 70.3 -192 run teleport @s ^ ^-2.6 ^ ~ ~
execute if score $swing Global matches 11..22 as @e[tag=swing,limit=1] rotated as @s rotated ~ ~7.5 positioned 93.0 70.3 -192 run teleport @s ^ ^-2.6 ^ ~ ~
execute if score $swing Global matches 27..32 as @e[tag=swing,limit=1] rotated as @s rotated ~ ~-7.5 positioned 93.0 70.3 -192 run teleport @s ^ ^-2.6 ^ ~ ~
execute if score $swing Global matches 2 as @e[tag=swingA,limit=2] run data modify entity @s Pose.Head[2] set value -22.5f
execute if score $swing Global matches 5 as @e[tag=swingA,limit=2] run data modify entity @s Pose.Head[2] set value -45.0f
execute if score $swing Global matches 12 as @e[tag=swingA,limit=2] run data modify entity @s Pose.Head[2] set value -22.5f
execute if score $swing Global matches 15 as @e[tag=swingA,limit=2] run data modify entity @s Pose.Head[2] set value 0.0f
execute if score $swing Global matches 18 as @e[tag=swingA,limit=2] run data modify entity @s Pose.Head[2] set value 22.5f
execute if score $swing Global matches 21 as @e[tag=swingA,limit=2] run data modify entity @s Pose.Head[2] set value 45.0f
execute if score $swing Global matches 28 as @e[tag=swingA,limit=2] run data modify entity @s Pose.Head[2] set value 22.5f
execute if score $swing Global matches 31 as @e[tag=swingA,limit=2] run data modify entity @s Pose.Head[2] set value 0.0f
execute rotated as @e[tag=swing,limit=1] positioned 93.0 70.3 -192 positioned ^ ^-2.6 ^ run teleport @e[tag=swing1,limit=1] 93.31 ~-1.2 ~
execute rotated as @e[tag=swing,limit=1] positioned 93.0 70.3 -192 positioned ^ ^-2.6 ^ run teleport @e[tag=swing2,limit=1] 92.69 ~-1.2 ~
execute rotated as @e[tag=swing,limit=1] positioned 93 70.3 -192 positioned ^ ^-2.6 ^ run teleport @e[tag=swing3,limit=1] 93 ~0.2 ~-0.15
execute rotated as @e[tag=swing,limit=1] positioned 92 70.3 -192 positioned ^ ^-2.6 ^ run teleport @e[tag=swing4,limit=1] 92 ~0.2 ~-0.15
execute if score $swing Global matches 22 as @e[tag=swing] run function bucchi:19park/trap/swing/end
execute if score $swing Global matches 32 run kill @e[tag=swing]
execute if score $swing Global matches 32 run tag @e[tag=swing] remove swing
execute if score $swing Global matches 32 run scoreboard players set $swing Global 0