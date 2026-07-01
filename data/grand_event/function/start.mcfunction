worldborder center 14 112
worldborder set 2188
gamemode spectator @a
effect give @a slowness infinite 255 true
effect give @a jump_boost infinite 128 true
effect give @a invisibility infinite 1 true
playsound entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
scoreboard objectives add anim dummy
scoreboard players set ticks anim 0
teleport @a -1048.832 147.52693 16.149 90.0 -27.4
kill @e[type=armor_stand,tag=camera]
summon armor_stand -1048.832 147.52693 16.149 {Tags:["camera"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Rotation:[90.0f,-27.4f]}
schedule function grand_event:pre_fly_tick 1t
schedule function grand_event:border_expand 60t
