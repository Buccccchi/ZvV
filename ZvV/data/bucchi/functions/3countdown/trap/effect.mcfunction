#> bucchi:3countdown/trap/effect
#
# カウント別にエフェクトを付与
#
# @input score 村人 Count
#   村人の残りの数
# @private

execute if score 村人 Count matches 10 run effect give @s[type=minecraft:villager] minecraft:fire_resistance 10 0
execute if score 村人 Count matches 9 run effect give @s[type=minecraft:zombie] minecraft:levitation 5 1
execute if score 村人 Count matches 8 run effect give @s[type=minecraft:villager] minecraft:resistance 10 1
execute if score 村人 Count matches 7 run effect give @s[type=minecraft:zombie] minecraft:slowness 10 0
execute if score 村人 Count matches 6 run effect give @s[type=minecraft:villager] minecraft:speed 10 1
execute if score 村人 Count matches 4 run effect give @s[type=minecraft:zombie] minecraft:weakness 10 1
execute if score 村人 Count matches 3 run effect give @s[type=minecraft:zombie] minecraft:wither 10 1
execute if score 村人 Count matches 2 run effect give @s[type=minecraft:villager] minecraft:regeneration 10 1