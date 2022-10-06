#窒息ブロック他
execute if score 村人 Count matches 7 run function bucchi:3countdown/trap/7
#村人減少時の処理
execute if score 村人 Count matches 9 unless block -100 64 0 minecraft:light_blue_concrete run clone -110 56 -10 -90 57 10 -110 64 -10
execute if score 村人 Count matches 8 unless block -100 64 0 minecraft:green_concrete run clone -110 54 -10 -90 55 10 -110 64 -10
execute if score 村人 Count matches 7 unless block -100 64 0 minecraft:lime_concrete run clone -110 52 -10 -90 53 10 -110 64 -10
execute if score 村人 Count matches 6 unless block -100 64 0 minecraft:yellow_concrete run fill -110 66 -10 -90 67 10 minecraft:air replace minecraft:obsidian
execute if score 村人 Count matches 6 unless block -100 64 0 minecraft:yellow_concrete run clone -110 50 -10 -90 51 10 -110 64 -10
execute if score 村人 Count matches 5 unless block -100 64 0 minecraft:orange_concrete run clone -110 48 -10 -90 49 10 -110 64 -10
execute if score 村人 Count matches 4 unless block -100 64 0 minecraft:pink_concrete run clone -110 46 -10 -90 47 10 -110 64 -10
execute if score 村人 Count matches 3 unless block -100 64 0 minecraft:red_concrete run clone -110 44 -10 -90 45 10 -110 64 -10
execute if score 村人 Count matches 2 unless block -100 64 0 minecraft:magenta_concrete run fill -101 67 11 -99 69 11 minecraft:air
execute if score 村人 Count matches 2 unless block -100 64 0 minecraft:magenta_concrete run clone -110 42 -10 -90 43 10 -110 64 -10
execute if score 村人 Count matches 1 unless block -100 64 0 minecraft:purple_concrete run fill -101 67 11 -99 69 11 minecraft:black_concrete
execute if score 村人 Count matches 1 unless block -100 64 0 minecraft:purple_concrete run kill @e[x=-101,y=67,z=11,dx=2,dy=2,dz=2]
execute if score 村人 Count matches 1 unless block -100 64 0 minecraft:purple_concrete run clone -110 40 -10 -90 41 10 -110 64 -10
execute if score 村人 Count matches 0 run clone -110 38 -10 -90 39 10 -110 64 -10
#試合終了
execute if score ゾンビ Count matches 0 run function bucchi:end
execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end