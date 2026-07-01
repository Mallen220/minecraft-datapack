execute as @e[type=armor_stand,tag=camera] at @s run tp @s ~-8.856933 ~0.296057 ~0.109575 ~0 ~0.228333
execute as @a at @e[type=armor_stand,tag=camera,limit=1] rotated as @e[type=armor_stand,tag=camera,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @a run spectate @e[type=armor_stand,tag=camera,limit=1] @s
scoreboard players add ticks anim 1
execute if score ticks anim matches ..119 run schedule function grand_event:pos0_to_pos1_tick 1t
execute if score ticks anim matches 120 run function grand_event:pos1_snap
