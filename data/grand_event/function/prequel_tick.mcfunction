scoreboard players add intro_ticks anim 1

execute as @e[type=armor_stand,tag=intro_cam] at @s run teleport @s ~ ~ ~ facing 14 112 3
execute as @e[type=armor_stand,tag=intro_cam] at @s run tp @s ^ ^ ^0.2

execute as @a at @e[type=armor_stand,tag=intro_cam,sort=nearest,limit=1] rotated as @e[type=armor_stand,tag=intro_cam,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @a run spectate @e[type=armor_stand,tag=intro_cam,sort=nearest,limit=1] @s

execute if score intro_ticks anim matches ..59 run schedule function grand_event:prequel_tick 1t
execute if score intro_ticks anim matches 60 run function grand_event:prequel_snap
