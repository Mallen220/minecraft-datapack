worldborder center 14 112
worldborder set 2188
time set day
effect give @a invisibility infinite 1 true
playsound entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
scoreboard objectives add anim dummy
forceload add -1520 -10 -1480 30
forceload add 100 -236

setblock 100 104 -236 dirt
setblock 101 104 -236 dirt
setblock 102 104 -236 dirt
setblock 103 104 -235 dirt
setblock 103 104 -234 dirt
setblock 103 104 -233 dirt
setblock 100 104 -232 dirt
setblock 101 104 -232 dirt
setblock 102 104 -232 dirt
setblock 99 104 -235 dirt
setblock 99 104 -234 dirt
setblock 99 104 -233 dirt
fill 100 104 -235 102 104 -233 air

tag @a remove initiator
tag @p add initiator
execute as @a at @p[tag=initiator] rotated as @s run tp @s ^ ^ ^-4 facing entity @p[tag=initiator] eyes
gamemode spectator @a

title @a times 10 40 10
title @a title {"text":"A force awakens","color":"gold","bold":true}

scoreboard players set intro_ticks anim 0
schedule function grand_event:prequel_tick 1t
