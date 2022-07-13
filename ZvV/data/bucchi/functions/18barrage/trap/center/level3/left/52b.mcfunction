execute if score $trap obj matches 1 run tag @e[tag=!barrage,tag=center3_2,tag=!center3_2B] add straight0.2
tag @e[tag=!barrage,tag=center3_2B,tag=right] add curveC
tag @e[tag=!barrage,tag=center3_2B,tag=!right] add curveD
tag @e[tag=!barrage,tag=center3_2B] add scale3A
tag @e[tag=!barrage,tag=center3_2] add barrage
scoreboard players add @e[tag=center3_2B] obj 1
execute if score $trap obj matches 1..3 run function bucchi:18barrage/trap/center/level3/left/52c