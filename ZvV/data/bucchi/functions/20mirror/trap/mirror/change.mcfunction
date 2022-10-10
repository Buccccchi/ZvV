execute rotated as @e[tag=True,x=200,y=65,z=-200,dx=0,dy=0,dz=0] run teleport @e[tag=Mirror] 200 64 -200 ~90 0
execute rotated as @e[tag=Mirror] run teleport @e[tag=Surface,tag=!Mirror] 200 64 -200 ~180 0
tag @e[tag=Mirror] add Activate
execute unless entity @e[tag=False] as @e[tag=True] run function bucchi:20mirror/trap/mirror/start