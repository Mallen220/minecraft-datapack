worldborder center 14 112
worldborder set 2188
gamemode adventure @a
effect give @a slowness infinite 255 true
effect give @a jump_boost infinite 128 true
effect give @a invisibility infinite 1 true
playsound entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5
teleport @a -1048.832 147.52693 16.149 90.0 -27.4
setblock -1049 146 16 barrier
schedule function grand_event:border_expand 60t
