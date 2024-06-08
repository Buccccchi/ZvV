execute unless entity @a[tag=StopCount] store result score ゾンビ Count if entity @e[type=minecraft:zombie,tag=!DontKill]
execute unless entity @a[tag=StopCount] store result score 村人 Count if entity @e[type=minecraft:villager,tag=!DontKill]
effect give @a[nbt=!{active_effects: [{id: "minecraft:night_vision"}]}] minecraft:night_vision infinite 0 true
tag @a[tag=!DontKill] add DontKill

# ステージ説明用
#function bucchi:describe/main