#> turn to node:
execute at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=ai.wander.node,limit=1,sort=nearest]

#> make ai rotate to nearest pass node if it exists:
execute as @s at @s if entity @e[tag=ai.pass.node,distance=..5] run tp @s ~ ~ ~ facing entity @e[tag=ai.pass.node,sort=nearest,limit=1]
