execute positioned as @e[tag=Standby,tag=Zombie] run summon minecraft:zombie ~ ~ ~ {Team: "Park", IsBaby: 1b}
execute positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Age: -2147483648}
function bucchi:standby
execute unless score $Standby Global matches 0 run function bucchi:19park/summon