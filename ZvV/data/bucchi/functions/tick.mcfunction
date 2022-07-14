execute store result score ゾンビ count if entity @e[type=minecraft:zombie,tag=!dontkill]
execute store result score 村人 count if entity @e[type=minecraft:villager,tag=!dontkill]
effect give @a[nbt=!{ActiveEffects: [{Id: 16}]}] minecraft:night_vision 1000000 0 true
#kill @e[tag=!dontkill]

#ステージ説明用
#function bucchi:describe/main