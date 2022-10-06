################################
### キャリー付き乗算乱数 by 赤石愛
################################

### キャリー付き乗算で乱数を更新する
## ax + c # $MWCMultiplier = 31,743
scoreboard players operation $Current Random *= $Multiplier Random
scoreboard players operation $Current Random += $Carry Random
scoreboard players operation $Carry Random = $Current Random
## x = (ax + c) % b # $MWCBase = 2^16 = 65536
scoreboard players operation $Current Random %= $Base Random
## c = (ax + c) / b
scoreboard players operation $Carry Random /= $Base Random

### 値を返す
scoreboard players get $Current Random