title @a times 10 60 10
title @a title {"text":"The border grows...","color":"gold","bold":true}
worldborder add 1000 25s
playsound block.beacon.activate master @a
scoreboard players set ticks anim 1
schedule function grand_event:fly_tick 1t

summon shulker -1500.5 -16 10.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1500.5 -16 11.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1500.5 -16 12.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1496.5 -16 10.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1496.5 -16 11.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1496.5 -16 12.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1499.5 -16 9.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1498.5 -16 9.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1497.5 -16 9.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1499.5 -16 13.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1498.5 -16 13.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
summon shulker -1497.5 -16 13.5 {Tags:["portal_glow"],Invisible:1b,NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b}
setblock -1499 180 11 end_gateway{Age:0L}
