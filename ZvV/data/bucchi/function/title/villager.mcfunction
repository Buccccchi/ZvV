#> bucchi:title/villager
#
# 村人勝利時のタイトル表示
#
# @input score $Add Title
#   タイトル表示開始時: 1, タイトル表示終了時: -1
# @within function bucchi:end

scoreboard players operation $Title Title += $Add Title
execute if score $Title Title matches 0 run title @a title ""
execute if score $Title Title matches 1 run title @a title [{"text": "勝者                      ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $Title Title matches 2 run title @a title [{"text": "勝者                   ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $Title Title matches 3 run title @a title [{"text": "勝者                ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $Title Title matches 4 run title @a title [{"text": "勝者             ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $Title Title matches 5 run title @a title [{"text": "勝者          ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $Title Title matches 6 run title @a title [{"text": "勝者       ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $Title Title matches 7 run title @a title [{"text": "勝者    ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $Title Title matches 8 run title @a title [{"text": "勝者 ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $Title Title matches 8 run scoreboard players set $Add Title -1
execute if score $Title Title matches 1..7 run schedule function bucchi:title/villager 1t append
execute if score $Title Title matches 8 run schedule function bucchi:title/villager 2s append