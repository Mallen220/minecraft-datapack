# serverend:tick
# Registered in minecraft:tick — runs every tick.

# --- Tag players currently past 1482 blocks (horizontal, radius) from world spawn ---
# Spawn point is x=14 z=3 (matches grand_event's finish.mcfunction reference block).
# Only applies in the overworld.
tag @a remove serverend.far
execute as @a at @s in minecraft:overworld positioned 14 ~ 3 if entity @s[distance=1482..] run tag @s add serverend.far

# --- Track daytime for the day/night effect split ---
# 0-12999 = day, 13000-23999 = night (vanilla lighting convention)
execute store result score #daytime serverend.data run time query minecraft:day

# --- Apply effects only to far-away players ---
execute if score #daytime serverend.data matches 0..12999 as @a[tag=serverend.far] run function serverend:effects/day
execute if score #daytime serverend.data matches 13000..23999 as @a[tag=serverend.far] run function serverend:effects/night

# --- Particle wall marking the soft border for players approaching/near it ---
# Window is 1082..1882 so it's visible a bit before AND a bit after the 1482 line.
execute as @a at @s in minecraft:overworld positioned 14 ~ 3 if entity @s[distance=1082..1882] run function serverend:border_wall

# NOTE: dynamic tick rate (1.5x when solo + far, 1.0x otherwise) is NOT handled here.
# The `tick` command cannot be run from inside a .mcfunction file on this server (confirmed:
# any file containing it fails to register at all), but it DOES work from a command block.
# See the command-block setup for that piece instead.
