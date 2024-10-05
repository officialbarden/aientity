#> wall found:
execute unless block ~ ~ ~ #air unless entity @e[tag=ai.wall.node,distance=..3] run function ai:common_behavior/wander/walk/new_node/wall_check/wall_found
#> reached entity:
execute if entity @e[tag=ai.entity,distance=..1] run return run kill @s
#> wall not found, recursive:
execute if block ~ ~ ~ #air positioned ^ ^ ^1 run function ai:common_behavior/wander/walk/new_node/wall_check/cast