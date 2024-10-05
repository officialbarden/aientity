#> summon raycast entity
summon marker ~ ~ ~ {Tags:["ai.nodal.ray"]}
#> make raycast entity face the ai entity
execute as @e[tag=ai.nodal.ray] at @s run tp @s ~ ~ ~ facing entity @e[tag=ai.entity,limit=1,sort=nearest]
#> cast the ray
execute as @e[tag=ai.nodal.ray] at @s align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^1 run function ai:common_behavior/wander/walk/new_node/wall_check/cast

