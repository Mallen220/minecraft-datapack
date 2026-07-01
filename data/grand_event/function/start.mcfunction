worldborder center 14 112
worldborder set 2188
gamemode spectator @a
time set day
effect give @a invisibility infinite 1 true
playsound entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
scoreboard objectives add anim dummy
forceload add -1500 10
forceload add 100 -236
scoreboard players set ticks anim 0
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
teleport @a -1048.832 147.52693 16.149 90.0 27.4
kill @e[type=armor_stand,tag=camera]
summon armor_stand -1048.832 147.52693 16.149 {Tags:["camera"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[90.0f,27.4f]}
schedule function grand_event:pre_fly_tick 1t
schedule function grand_event:border_expand 60t
