execute store result score #daytime serverend.data run time query minecraft:day

execute if score #daytime serverend.data matches 0..12999 as @a[tag=serverend.far] run function serverend:effects/day
execute if score #daytime serverend.data matches 13000..23999 as @a[tag=serverend.far] run function serverend:effects/night
