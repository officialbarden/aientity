#> spawn node
function ai:common_behavior/wander/walk/new_node/spawn
#> turn to node:
execute at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=new.node.temp,limit=1,sort=nearest]
#> walk:
tag @s add ai.wander.walk