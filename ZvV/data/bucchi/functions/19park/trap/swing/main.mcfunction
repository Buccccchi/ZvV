scoreboard players add $Swing Global 1
execute if score $Swing Global matches 1..6 as @e[tag=Swing,limit=1] rotated as @s rotated ~ ~-7.5 positioned 93.0 70.3 -192 run teleport @s ^ ^-2.6 ^ ~ ~
execute if score $Swing Global matches 11..22 as @e[tag=Swing,limit=1] rotated as @s rotated ~ ~7.5 positioned 93.0 70.3 -192 run teleport @s ^ ^-2.6 ^ ~ ~
execute if score $Swing Global matches 27..32 as @e[tag=Swing,limit=1] rotated as @s rotated ~ ~-7.5 positioned 93.0 70.3 -192 run teleport @s ^ ^-2.6 ^ ~ ~
execute if score $Swing Global matches 2 as @e[tag=SwingA,limit=2] run data modify entity @s Pose.Head[2] set value -22.5f
execute if score $Swing Global matches 5 as @e[tag=SwingA,limit=2] run data modify entity @s Pose.Head[2] set value -45.0f
execute if score $Swing Global matches 12 as @e[tag=SwingA,limit=2] run data modify entity @s Pose.Head[2] set value -22.5f
execute if score $Swing Global matches 15 as @e[tag=SwingA,limit=2] run data modify entity @s Pose.Head[2] set value 0.0f
execute if score $Swing Global matches 18 as @e[tag=SwingA,limit=2] run data modify entity @s Pose.Head[2] set value 22.5f
execute if score $Swing Global matches 21 as @e[tag=SwingA,limit=2] run data modify entity @s Pose.Head[2] set value 45.0f
execute if score $Swing Global matches 28 as @e[tag=SwingA,limit=2] run data modify entity @s Pose.Head[2] set value 22.5f
execute if score $Swing Global matches 31 as @e[tag=SwingA,limit=2] run data modify entity @s Pose.Head[2] set value 0.0f
execute rotated as @e[tag=Swing,limit=1] positioned 93.0 70.3 -192 positioned ^ ^-2.6 ^ run teleport @e[tag=Swing1,limit=1] 93.31 ~-1.2 ~
execute rotated as @e[tag=Swing,limit=1] positioned 93.0 70.3 -192 positioned ^ ^-2.6 ^ run teleport @e[tag=Swing2,limit=1] 92.69 ~-1.2 ~
execute rotated as @e[tag=Swing,limit=1] positioned 93 70.3 -192 positioned ^ ^-2.6 ^ run teleport @e[tag=Swing3,limit=1] 93 ~0.2 ~-0.15
execute rotated as @e[tag=Swing,limit=1] positioned 92 70.3 -192 positioned ^ ^-2.6 ^ run teleport @e[tag=Swing4,limit=1] 92 ~0.2 ~-0.15
execute if score $Swing Global matches 22 as @e[tag=Swing] run function bucchi:19park/trap/swing/end
execute if score $Swing Global matches 32 run kill @e[tag=Swing]
execute if score $Swing Global matches 32 run tag @e[tag=Swing] remove Swing
execute if score $Swing Global matches 32 run scoreboard players set $Swing Global 0