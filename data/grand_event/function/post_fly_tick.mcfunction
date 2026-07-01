execute as @a at @e[type=armor_stand,tag=camera,limit=1] rotated as @e[type=armor_stand,tag=camera,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @a run spectate @e[type=armor_stand,tag=camera,limit=1] @s
execute if score ticks anim matches 501 run schedule function grand_event:post_fly_tick 1t
