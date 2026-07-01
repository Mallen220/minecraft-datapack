execute as @e[type=armor_stand,tag=camera] at @s run tp @s ~-1.014146 ~-0.031468 ~0.01588 ~0 ~0.2348
execute as @a at @e[type=armor_stand,tag=camera,limit=1] rotated as @e[type=armor_stand,tag=camera,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @a run spectate @e[type=armor_stand,tag=camera,limit=1] @s
scoreboard players add ticks anim 1
execute if score ticks anim matches ..500 run schedule function grand_event:fly_tick 1t
execute if score ticks anim matches 501 run function grand_event:view_3
