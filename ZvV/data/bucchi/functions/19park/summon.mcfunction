execute positioned as @e[tag=standby,tag=zombie] run summon minecraft:zombie ~ ~ ~ {Team: "park", IsBaby: 1b}
execute positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Age: -2147483648}
function bucchi:standby
execute unless score $standby obj matches 0 run function bucchi:19park/summon