execute rotated as @e[tag=true,x=200,y=65,z=-200,dx=0,dy=0,dz=0] run teleport @e[tag=mirror] 200 64 -200 ~ 0
execute rotated as @e[tag=mirror] run teleport @e[tag=surface,tag=!mirror] 200 64 -200 ~180 0
tag @e[tag=mirror] add activate
execute unless entity @e[tag=false] as @e[tag=true] run function bucchi:20mirror/trap/mirror/start