execute as @e[type=armor_stand,tag=camera] at @s run tp @s ~-0.088569 ~0.002961 ~0.001096 ~0 ~0.002283
scoreboard players remove #steps anim 1
execute if score #steps anim matches 1.. run function grand_event:pos0_loop
