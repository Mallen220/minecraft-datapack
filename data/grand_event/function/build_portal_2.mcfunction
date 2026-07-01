setblock 103 104 -235 end_portal_frame[facing=west,eye=true]
setblock 103 104 -234 end_portal_frame[facing=west,eye=true]
setblock 103 104 -233 end_portal_frame[facing=west,eye=true]
playsound block.end_portal_frame.fill master @a 103 104 -234
particle sonic_boom 103 104 -234 0 0 0 0 1
schedule function grand_event:build_portal_3 10t
