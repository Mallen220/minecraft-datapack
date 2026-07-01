scoreboard players add intro_ticks anim 1
execute as @a at @s run teleport @s ~ ~ ~ facing 14 112 3
execute as @a at @s run tp @s ^ ^ ^0.2
execute if score intro_ticks anim matches ..59 run schedule function grand_event:prequel_tick 1t
execute if score intro_ticks anim matches 60 run function grand_event:prequel_snap
