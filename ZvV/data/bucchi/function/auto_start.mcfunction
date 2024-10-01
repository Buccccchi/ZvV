#> bucchi:auto_start
#
# 自動バランス確認を開始
#
# @private

data modify storage minecraft:global Auto set value 1b
scoreboard players reset * Auto
scoreboard players set $Zombie Auto 0
scoreboard players set $Villager Auto 0
scoreboard players set $Draw Auto 0
scoreboard players set $AveSec Auto 0
scoreboard players set #20 Auto 20