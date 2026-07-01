worldborder center 14 112
worldborder set 2188
time set day
weather clear
effect give @a invisibility infinite 1 true
playsound entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
scoreboard objectives add anim dummy
team add viewers
team modify viewers seeFriendlyInvisibles false
team modify viewers nametagVisibility never
team modify viewers collisionRule never
team join viewers @a
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
execute at @p[tag=initiator] run summon marker ~ ~1.6 ~ {Tags:["center"]}
gamemode spectator @a
execute as @a at @e[type=marker,tag=center,limit=1] rotated as @s run teleport @s ~ ~ ~ ~ 0
execute as @a at @s run teleport @s ^ ^ ^-4 facing entity @e[type=marker,tag=center,limit=1]
kill @e[type=marker,tag=center]
execute as @a at @s run summon armor_stand ~ ~1.6 ~ {Tags:["intro_cam"],Invisible:1b,NoGravity:1b,Invulnerable:1b}
execute as @e[type=armor_stand,tag=intro_cam] at @s run teleport @s ~ ~ ~ facing 14 112 3

title @a times 10 40 10
title @a title {"text":"A force awakens","color":"gold","bold":true}

scoreboard players set intro_ticks anim 0
schedule function grand_event:prequel_tick 1t
