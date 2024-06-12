#> bucchi:tick
#
# load時に実行される処理
#
# @within tag/function minecraft:load

#> 全般で使用されるスコアボード
# @public
    scoreboard objectives add Global dummy

#> タイトル表示用のスコアボード
# @public
    scoreboard objectives add Title dummy

#> 残りの数表示用のスコアボード
# @public
    scoreboard objectives add Count dummy {"text": "残りの数", "color": "green", "bold": true, "underlined": true}
    scoreboard objectives setdisplay sidebar Count

#> ニンジン付きの棒の使用を検知するスコアボード
#
# 主にステージ説明時に使用
#
# @within function bucchi:describe/**
    scoreboard objectives add Carrot minecraft.used:minecraft.carrot_on_a_stick