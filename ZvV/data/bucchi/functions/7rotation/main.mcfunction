# 矢
kill @e[type=minecraft:arrow,nbt={inGround: 1b}]

# 試合終了
execute if score ゾンビ Count matches 0 run function bucchi:end {"auto": "7rotation"}
execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"auto": "7rotation"}

# auto
scoreboard players add $経過tick Count 1