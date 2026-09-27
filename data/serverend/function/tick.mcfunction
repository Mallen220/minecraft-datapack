# serverend:tick
# Registered in minecraft:tick — runs every tick.

# --- Tag players currently past 3188 blocks (horizontal) from world spawn ---
# Spawn point is x=14 z=3 (matches grand_event's finish.mcfunction reference block).
# Only applies in the overworld.
tag @a remove serverend.far
execute as @a at @s in minecraft:overworld positioned 14 ~ 3 if entity @s[distance=3188..] run tag @s add serverend.far

# --- Track daytime for the day/night effect split ---
# 0-12999 = day, 13000-23999 = night (vanilla lighting convention)
execute store result score #daytime serverend.data run time query minecraft:day

# --- Apply effects only to far-away players ---
execute if score #daytime serverend.data matches 0..12999 as @a[tag=serverend.far] run function serverend:effects/day
execute if score #daytime serverend.data matches 13000..23999 as @a[tag=serverend.far] run function serverend:effects/night

# --- Dynamic tick rate ---
# Count online players
scoreboard players set #players serverend.data 0
execute as @a run scoreboard players add #players serverend.data 1

# 1.5x (30) only when exactly one player is online AND that player is out past the border (tagged far).
# Otherwise (2+ players online, or the lone player is within the border) run normal speed (20).
execute if score #players serverend.data matches 1 if entity @a[tag=serverend.far] run tick rate 30
execute unless score #players serverend.data matches 1 run tick rate 20
execute if score #players serverend.data matches 1 unless entity @a[tag=serverend.far] run tick rate 20
