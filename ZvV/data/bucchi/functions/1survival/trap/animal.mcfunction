scoreboard players set $RandMax Global 5
function bucchi:random
execute if score $Random Global matches 0 run summon minecraft:cow -8 65 92 {Tags: ["Animal"]}
execute if score $Random Global matches 1 run summon minecraft:pig -8 65 92 {Tags: ["Animal"]}
execute if score $Random Global matches 2 run summon minecraft:sheep -8 65 92 {Tags: ["Animal"]}
execute if score $Random Global matches 3 run summon minecraft:chicken -8 65 92 {Tags: ["Animal"]}
execute if score $Random Global matches 4 run summon minecraft:rabbit -8 65 92 {Tags: ["Animal"]}