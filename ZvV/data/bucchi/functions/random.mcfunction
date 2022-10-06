################################
### キャリー付き乗算乱数 by 赤石愛
################################

### キャリー付き乗算で乱数を更新する
## ax + c # $MWCMultiplier = 31,743
scoreboard players operation $current random *= $multiplier random
scoreboard players operation $current random += $carry random
scoreboard players operation $carry random = $current random
## x = (ax + c) % b # $MWCBase = 2^16 = 65536
scoreboard players operation $current random %= $base random
## c = (ax + c) / b
scoreboard players operation $carry random /= $base random

### 値を返す
scoreboard players get $current random