tp @a @e[type=marker,tag=camera,limit=1]
execute if score ticks anim matches 0 run schedule function grand_event:pre_fly_tick 1t
