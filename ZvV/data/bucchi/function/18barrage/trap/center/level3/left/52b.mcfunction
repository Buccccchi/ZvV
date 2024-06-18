execute if score $Trap Global matches 1 run tag @e[tag=!Barrage,tag=Center3_2,tag=!Center3_2B] add Straight0.2
tag @e[tag=!Barrage,tag=Center3_2B,tag=Right] add CurveC
tag @e[tag=!Barrage,tag=Center3_2B,tag=!Right] add CurveD
tag @e[tag=!Barrage,tag=Center3_2B] add Scale3A
tag @e[tag=!Barrage,tag=Center3_2] add Barrage
scoreboard players add @e[tag=Center3_2B] Global 1
execute if score $Trap Global matches 1..3 run function bucchi:18barrage/trap/center/level3/left/52c