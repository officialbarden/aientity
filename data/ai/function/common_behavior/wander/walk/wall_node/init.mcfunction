
#> temp node:
execute unless block ~ ~ ~1 #air run summon marker ~ ~ ~ {Tags:["ai.wall.node.temp"],Rotation:[0f,0f]}
execute unless block ~1 ~ ~ #air run summon marker ~ ~ ~ {Tags:["ai.wall.node.temp"],Rotation:[-90f,0f]}
execute unless block ~ ~ ~-1 #air run summon marker ~ ~ ~ {Tags:["ai.wall.node.temp"],Rotation:[180f,0f]}
execute unless block ~-1 ~ ~ #air run summon marker ~ ~ ~ {Tags:["ai.wall.node.temp"],Rotation:[90f,0f]}

execute as @e[tag=ai.wall.node.temp] at @s run function ai:common_behavior/wander/walk/wall_node/block_check
kill @s