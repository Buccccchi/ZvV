scoreboard objectives add obj dummy
scoreboard objectives add random dummy
scoreboard objectives add title dummy
scoreboard objectives add count dummy {"text": "残りの数", "color": "green", "bold": true, "underlined": true}
scoreboard objectives add carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives setdisplay sidebar count

### 乗数設定
scoreboard players set $multiplier random 31743
### 除数設定
scoreboard players set $base random 65536
### 現在値設定
scoreboard players set $current random 7966
### キャリー設定
scoreboard players set $carry random 26757