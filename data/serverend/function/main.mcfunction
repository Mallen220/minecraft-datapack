# serverend:main
# Identical copy of tick.mcfunction, used to test whether the name "tick" itself is the problem.

tag @a remove serverend.far
execute as @a at @s in minecraft:overworld positioned 14 ~ 3 if entity @s[distance=3188..] run tag @s add serverend.far

execute store result score #daytime serverend.data run time query minecraft:day

execute if score #daytime serverend.data matches 0..12999 as @a[tag=serverend.far] run function serverend:effects/day
execute if score #daytime serverend.data matches 13000..23999 as @a[tag=serverend.far] run function serverend:effects/night

scoreboard players set #players serverend.data 0
execute as @a run scoreboard players add #players serverend.data 1

execute if score #players serverend.data matches 1 if entity @a[tag=serverend.far] run tick rate 30
execute unless score #players serverend.data matches 1 run tick rate 20
execute if score #players serverend.data matches 1 unless entity @a[tag=serverend.far] run tick rate 20
