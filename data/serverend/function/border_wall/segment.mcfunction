# serverend:border_wall/segment
# Entry context: positioned exactly on the 3188-block border circle, rotated
# facing away from spawn (i.e. toward the approaching player).

particle minecraft:portal ~ ~-1 ~ 0 5 0 0.01 40 force
execute positioned ^-6 ^ ^ run particle minecraft:portal ~ ~-1 ~ 0 5 0 0.01 25 force
execute positioned ^6 ^ ^ run particle minecraft:portal ~ ~-1 ~ 0 5 0 0.01 25 force
