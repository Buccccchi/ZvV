scoreboard objectives add Global dummy
scoreboard objectives add Random dummy
scoreboard objectives add Title dummy
scoreboard objectives add Count dummy {"text": "残りの数", "color": "green", "bold": true, "underlined": true}
scoreboard objectives add Carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives setdisplay sidebar Count

### 乗数設定
scoreboard players set $Multiplier Random 31743
### 除数設定
scoreboard players set $Base Random 65536
### 現在値設定
summon minecraft:marker 0 0 0 {Tags: ["Random"]}
execute store result score $Current Random run data get entity @e[tag=Random,limit=1] UUID[1]
### キャリー設定
execute store result score $Carry Random run data get entity @e[tag=Random,limit=1] UUID[3]
kill @e[tag=Random]