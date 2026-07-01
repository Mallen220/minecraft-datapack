teleport @a 14 112 3 90 0
kill @e[type=armor_stand,tag=intro_cam]
kill @e[type=armor_stand,tag=camera]
summon armor_stand 14 112 3 {Tags:["camera"],Invisible:1b,NoGravity:1b,Invulnerable:1b,Rotation:[90.0f,0.0f]}
scoreboard players set ticks anim 0
scoreboard players set #remainder anim 0
schedule function grand_event:pos0_to_pos1_tick 1t
