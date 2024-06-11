# ゾンビ勝利時のタイトル表示
scoreboard players operation $Title Title += $Add Title
execute if score $Title Title matches 0 run title @a title ""
execute if score $Title Title matches 1 run title @a title [{"text": "勝者                      ", "color": "yellow", "bold": true}, {"text": "ゾンビ", "color": "green"}]
execute if score $Title Title matches 2 run title @a title [{"text": "勝者                   ", "color": "yellow", "bold": true}, {"text": "ゾンビ", "color": "green"}]
execute if score $Title Title matches 3 run title @a title [{"text": "勝者                ", "color": "yellow", "bold": true}, {"text": "ゾンビ", "color": "green"}]
execute if score $Title Title matches 4 run title @a title [{"text": "勝者             ", "color": "yellow", "bold": true}, {"text": "ゾンビ", "color": "green"}]
execute if score $Title Title matches 5 run title @a title [{"text": "勝者          ", "color": "yellow", "bold": true}, {"text": "ゾンビ", "color": "green"}]
execute if score $Title Title matches 6 run title @a title [{"text": "勝者       ", "color": "yellow", "bold": true}, {"text": "ゾンビ", "color": "green"}]
execute if score $Title Title matches 7 run title @a title [{"text": "勝者    ", "color": "yellow", "bold": true}, {"text": "ゾンビ", "color": "green"}]
execute if score $Title Title matches 8 run title @a title [{"text": "勝者 ", "color": "yellow", "bold": true}, {"text": "ゾンビ", "color": "green"}]
execute if score $Title Title matches 8 run scoreboard players set $Add Title -1
execute if score $Title Title matches 1..7 run schedule function bucchi:title/zombie 1t append
execute if score $Title Title matches 8 run schedule function bucchi:title/zombie 2s append