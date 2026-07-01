effect give @a blindness 2 1 true
playsound entity.phantom.swoop master @a
gamemode spectator @a
teleport @a 96.426 105.70000 -233.469 -90.0 30.0
execute as @e[type=armor_stand,tag=camera] at @s run tp @s 96.426 105.70000 -233.469 -90.0 30.0
scoreboard players set ticks anim 501
kill @e[type=shulker,tag=portal_glow]
setblock -1499 -14 11 air
setblock -1499 -15 11 air
fill -1500 -16 10 -1498 -16 12 lava
schedule function grand_event:post_fly_tick 1t
schedule function grand_event:build_portal 60t
