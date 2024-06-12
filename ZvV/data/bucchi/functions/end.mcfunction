#> bucchi:end
#
# 試合終了時の共通処理
#
# @input
#   score ゾンビ Count
#       ゾンビの残りの数
#   score 村人 Count
#       村人の残りの数
# @public

# 勝敗をタイトル表示
    title @a times 0 60 0
    scoreboard players set $Title Title 0
    scoreboard players set $Add Title 1
    execute unless score ゾンビ Count matches 0 if score 村人 Count matches 0 run function bucchi:title/zombie
    execute unless score 村人 Count matches 0 if score ゾンビ Count matches 0 run function bucchi:title/villager
    execute if score ゾンビ Count matches 0 if score 村人 Count matches 0 run title @a times 10 40 10
    execute if score ゾンビ Count matches 0 if score 村人 Count matches 0 run title @a title {"text": "引き分け", "color": "yellow", "bold": true}

# ステージのメイン処理を終了
    setblock ~ ~-1 ~ minecraft:stone

# 自動バランス確認
    $execute if data storage global {Auto: 1b} run function bucchi:auto {"stage": "$(stage)"}