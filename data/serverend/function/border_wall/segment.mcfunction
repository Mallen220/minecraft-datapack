# serverend:border_wall/segment
# Entry context: positioned exactly on the 1482-block border circle, rotated
# facing away from spawn (i.e. toward the approaching player).
# Much denser/taller cluster of pillars so the wall reads clearly at a distance.

particle minecraft:portal ~ ~-2 ~ 0 8 0 0.02 120 force
particle minecraft:end_rod ~ ~-2 ~ 0 8 0 0.01 20 force

execute positioned ^-4 ^ ^ run particle minecraft:portal ~ ~-2 ~ 0 8 0 0.02 90 force
execute positioned ^4 ^ ^ run particle minecraft:portal ~ ~-2 ~ 0 8 0 0.02 90 force

execute positioned ^-8 ^ ^ run particle minecraft:portal ~ ~-2 ~ 0 8 0 0.02 70 force
execute positioned ^8 ^ ^ run particle minecraft:portal ~ ~-2 ~ 0 8 0 0.02 70 force

execute positioned ^-12 ^ ^ run particle minecraft:portal ~ ~-2 ~ 0 8 0 0.02 50 force
execute positioned ^12 ^ ^ run particle minecraft:portal ~ ~-2 ~ 0 8 0 0.02 50 force
