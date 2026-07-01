spectate @e[type=armor_stand,tag=camera,limit=1] @a
execute if score ticks anim matches 0 run schedule function grand_event:pre_fly_tick 1t
