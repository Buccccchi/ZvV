#> bucchi:9cave/summon
#
# 洞窟ステージ
# ゾンビと村人を召喚
#
# @input score $Standby Global
#   ゾンビと村人の召喚数
# @within function bucchi:9cave/standby

# ゾンビを召喚
    execute positioned as @e[tag=Standby,tag=Zombie] run summon minecraft:zombie ~ ~ ~ {Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], IsBaby: 0b}

# 村人をランダムな職業で召喚
    execute store result score $Random Global run random value 0..13
    execute if score $Random Global matches 0 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:armorer", type: "minecraft:plains"}}
    execute if score $Random Global matches 1 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:butcher", type: "minecraft:plains"}}
    execute if score $Random Global matches 2 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:cartographer", type: "minecraft:plains"}}
    execute if score $Random Global matches 3 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:cleric", type: "minecraft:plains"}}
    execute if score $Random Global matches 4 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:farmer", type: "minecraft:plains"}}
    execute if score $Random Global matches 5 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:fisherman", type: "minecraft:plains"}}
    execute if score $Random Global matches 6 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:fletcher", type: "minecraft:plains"}}
    execute if score $Random Global matches 7 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:leatherworker", type: "minecraft:plains"}}
    execute if score $Random Global matches 8 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:librarian", type: "minecraft:plains"}}
    execute if score $Random Global matches 9 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:mason", type: "minecraft:plains"}}
    execute if score $Random Global matches 10 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:nitwit", type: "minecraft:plains"}}
    execute if score $Random Global matches 11 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:shepherd", type: "minecraft:plains"}}
    execute if score $Random Global matches 12 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:toolsmith", type: "minecraft:plains"}}
    execute if score $Random Global matches 13 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {active_effects: [{id: "minecraft:fire_resistance", duration: -1, show_particles: 0b}], Health: 40.0f, attributes: [{id: "minecraft:generic.max_health", base: 40.0d}], Xp: -2147483648, VillagerData: {profession: "minecraft:weaponsmith", type: "minecraft:plains"}}

# 召喚場所の移動
    function bucchi:standby

# 残る召喚数が0でなければ続行
    execute unless score $Standby Global matches 0 run function bucchi:9cave/summon