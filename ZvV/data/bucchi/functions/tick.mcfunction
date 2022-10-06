execute unless entity @a[tag=Stop] store result score ゾンビ Count if entity @e[type=minecraft:zombie,tag=!DontKill]
execute unless entity @a[tag=Stop] store result score 村人 Count if entity @e[type=minecraft:villager,tag=!DontKill]
effect give @a[nbt=!{ActiveEffects: [{Id: 16}]}] minecraft:night_vision 1000000 0 true
tag @a[tag=!DontKill] add DontKill

#ステージ説明用
#function bucchi:describe/main