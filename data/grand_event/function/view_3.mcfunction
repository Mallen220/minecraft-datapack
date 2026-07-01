effect give @a blindness 2 1 true
playsound entity.phantom.swoop master @a
gamemode adventure @a
teleport @a 96.426 106.20000 -233.469 -90.0 30.0
setblock 96 105 -234 barrier
kill @e[type=marker,tag=camera]
schedule function grand_event:build_portal 60t
