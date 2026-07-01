fill 100 104 -235 102 104 -233 end_portal
summon lightning_bolt 101 104 -234
playsound block.end_portal.spawn master @a 101 104 -234
title @a title {"text":"The Portal is Open!","color":"gold","bold":true}
schedule function grand_event:finish 80t
