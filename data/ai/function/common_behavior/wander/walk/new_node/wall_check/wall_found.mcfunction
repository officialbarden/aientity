#> spawn a new node called "wall node"
summon marker ~ ~ ~ {Tags:["ai.wall.node"]}
#> align the node to the centre of the block
execute as @e[type=marker,tag=ai.wall.node,sort=nearest,limit=1] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
#> continue raycasting:
execute positioned ^ ^ ^1 run function ai:common_behavior/wander/walk/new_node/wall_check/cast
#> start wall_node checking:
execute as @e[type=marker,tag=ai.wall.node,sort=nearest,limit=1] at @s run function ai:common_behavior/wander/walk/wall_node/init


#> debugging.
say wall found!