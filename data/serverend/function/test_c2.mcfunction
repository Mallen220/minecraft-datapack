execute if score #players serverend.data matches 1 if entity @a[tag=serverend.far] run tick rate 30
execute unless score #players serverend.data matches 1 run tick rate 20
execute if score #players serverend.data matches 1 unless entity @a[tag=serverend.far] run tick rate 20
