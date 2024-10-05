# step 0: kill any node entity is standing on:
kill @e[tag=ai.wander.node,distance=..0.5]
# step 1: create a random node:
summon marker ~ ~ ~ {Tags:["ai.wander.node","new.node.temp"]}
# step 2: spread the node to a random location around the entity.
execute as @e[tag=new.node.temp] at @s run spreadplayers ~ ~ 3 5 true @s
# step 3: align to center:
execute as @e[tag=new.node.temp] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~