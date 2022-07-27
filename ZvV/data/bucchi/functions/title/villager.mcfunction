scoreboard players operation $title title += $add title
execute if score $title title matches 0 run title @a title ""
execute if score $title title matches 1 run title @a title [{"text": "勝者                      ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $title title matches 2 run title @a title [{"text": "勝者                   ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $title title matches 3 run title @a title [{"text": "勝者                ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $title title matches 4 run title @a title [{"text": "勝者             ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $title title matches 5 run title @a title [{"text": "勝者          ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $title title matches 6 run title @a title [{"text": "勝者       ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $title title matches 7 run title @a title [{"text": "勝者    ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $title title matches 8 run title @a title [{"text": "勝者 ", "color": "yellow", "bold": true}, {"text": "村人", "color": "gold"}]
execute if score $title title matches 8 run scoreboard players set $add title -1
execute if score $title title matches 1..7 run schedule function bucchi:title/villager 1t append
execute if score $title title matches 8 run schedule function bucchi:title/villager 2s append