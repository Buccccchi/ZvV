# 氷の運搬判定
execute align xyz run tag @e[dx=0,dy=0,dz=-0.1] add Tmp
execute align xyz run tag @e[dx=0,dy=0,dz=0.1] add Tmp
execute align xyz run tag @e[dx=-0.1,dy=0,dz=0] add Tmp
execute align xyz run tag @e[dx=0.1,dy=0,dz=0] add Tmp

execute if entity @e[tag=Tmp] run function bucchi:22carry/trap/carry/slide_start