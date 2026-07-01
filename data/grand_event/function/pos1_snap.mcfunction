teleport @a -1048.832 147.52693 16.149 90.0 27.4
kill @e[type=armor_stand,tag=camera]
summon armor_stand -1048.832 147.52693 16.149 {Tags:["camera"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[90.0f,27.4f]}
scoreboard players set ticks anim 0
schedule function grand_event:pre_fly_tick 1t
schedule function grand_event:border_expand 30t
