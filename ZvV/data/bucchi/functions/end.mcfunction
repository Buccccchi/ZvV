title @a times 0 60 0
scoreboard players set $Title Title 0
scoreboard players set $Add Title 1
execute unless score ゾンビ Count matches 0 if score 村人 Count matches 0 run function bucchi:title/zombie
execute unless score 村人 Count matches 0 if score ゾンビ Count matches 0 run function bucchi:title/villager
execute if score ゾンビ Count matches 0 if score 村人 Count matches 0 run title @a times 10 40 10
execute if score ゾンビ Count matches 0 if score 村人 Count matches 0 run title @a title {"text": "引き分け", "color": "yellow", "bold": true}
setblock ~ ~-1 ~ minecraft:stone
#function bucchi:auto