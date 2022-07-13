#窒息ブロック設置
scoreboard players add @e[scores={obj=0..100}] obj 1
execute positioned as @e[scores={obj=1..100}] run setblock ~ ~1 ~ minecraft:obsidian
#窒息ブロック削除
scoreboard players add $block obj 1
execute if score $block obj matches 100 store success score $block obj run fill -110 66 -10 -90 67 10 minecraft:air replace minecraft:obsidian
#残った金床削除
fill -110 65 -10 -90 65 10 minecraft:air replace #minecraft:anvil