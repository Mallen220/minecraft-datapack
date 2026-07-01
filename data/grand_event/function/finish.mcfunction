effect clear @a
team empty viewers
team remove viewers
gamemode survival @a
teleport @a 79.574 108.00000 -233.620 -90.0 21.00
scoreboard players set ticks anim 502
forceload remove -1520 -10 -1480 30
forceload remove 100 -236
kill @e[type=armor_stand,tag=camera]
effect give @a minecraft:regeneration 2 255 true
effect give @a minecraft:saturation 2 255 true
setblock 14 112 3 air
setblock 14 110 3 minecraft:diamond_block
