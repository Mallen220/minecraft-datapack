setblock 100 104 -236 end_portal_frame[facing=south,eye=true]
setblock 101 104 -236 end_portal_frame[facing=south,eye=true]
setblock 102 104 -236 end_portal_frame[facing=south,eye=true]
playsound block.end_portal_frame.fill master @a 101 104 -236
particle sonic_boom 101 104 -236 0 0 0 0 1
schedule function grand_event:build_portal_2 10t
