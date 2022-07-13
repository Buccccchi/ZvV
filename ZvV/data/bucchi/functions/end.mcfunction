title @a times 10 50 20
execute unless score ゾンビ count matches 0 if score 村人 count matches 0 run title @a title {"text": "ゾンビの勝利", "color": "yellow", "bold": true}
execute unless score 村人 count matches 0 if score ゾンビ count matches 0 run title @a title {"text": "村人の勝利", "color": "yellow", "bold": true}
execute if score ゾンビ count matches 0 if score 村人 count matches 0 run title @a title {"text": "引き分け", "color": "yellow", "bold": true}
setblock ~ ~-1 ~ minecraft:stone
#function bucchi:auto