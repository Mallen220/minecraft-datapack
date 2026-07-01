setblock 99 104 -235 end_portal_frame[facing=east,eye=true]
setblock 99 104 -234 end_portal_frame[facing=east,eye=true]
setblock 99 104 -233 end_portal_frame[facing=east,eye=true]
playsound block.end_portal_frame.fill master @a 99 104 -234
particle sonic_boom 99 104 -234 0 0 0 0 1
schedule function grand_event:ignite_portal 40t
