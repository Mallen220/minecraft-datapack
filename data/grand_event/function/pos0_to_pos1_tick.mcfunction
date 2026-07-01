scoreboard players set #120 anim 120
scoreboard players operation #raw_steps anim = #120 anim
scoreboard players operation #raw_steps anim -= ticks anim
scoreboard players operation #raw_steps anim *= ticks anim

scoreboard players operation #raw_steps anim += #remainder anim

scoreboard players operation #steps anim = #raw_steps anim
scoreboard players set #24 anim 24
scoreboard players operation #steps anim /= #24 anim

scoreboard players operation #remainder anim = #steps anim
scoreboard players operation #remainder anim *= #24 anim
scoreboard players operation #temp anim = #raw_steps anim
scoreboard players operation #temp anim -= #remainder anim
scoreboard players operation #remainder anim = #temp anim

execute if score #steps anim matches 1.. run function grand_event:pos0_loop

execute as @a at @e[type=armor_stand,tag=camera,limit=1] rotated as @e[type=armor_stand,tag=camera,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @a run spectate @e[type=armor_stand,tag=camera,limit=1] @s

scoreboard players add ticks anim 1
execute if score ticks anim matches ..119 run schedule function grand_event:pos0_to_pos1_tick 1t
execute if score ticks anim matches 120 run function grand_event:pos1_snap
