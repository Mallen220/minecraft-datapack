setblock 100 104 -232 end_portal_frame[facing=north,eye=true]
setblock 101 104 -232 end_portal_frame[facing=north,eye=true]
setblock 102 104 -232 end_portal_frame[facing=north,eye=true]
playsound block.end_portal_frame.fill master @a 101 104 -232
particle sonic_boom 101 104 -232 0 0 0 0 1
schedule function grand_event:build_portal_4 10t
