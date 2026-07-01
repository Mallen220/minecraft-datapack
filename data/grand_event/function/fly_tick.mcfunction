execute as @e[type=marker,tag=camera] at @s run tp @s ~2.290516 ~-0.082654 ~-0.499236 ~-0.36 ~0.1148
tp @a @e[type=marker,tag=camera,limit=1]
scoreboard players add ticks anim 1
execute if score ticks anim matches ..500 run schedule function grand_event:fly_tick 1t
execute if score ticks anim matches 501 run function grand_event:view_3
