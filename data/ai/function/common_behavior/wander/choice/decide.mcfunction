#> remove tags:
tag @s remove ai.wander.timer
tag @s remove ai.wander.walk

#> If 0 = stand still for a certain amount of time
#> If 1 = walk to the node.
execute store result score $Random ai.values run random value 0..1
execute if score $Random ai.values matches 0 run function ai:common_behavior/wander/stand/init
execute if score $Random ai.values matches 1 run function ai:common_behavior/wander/walk/init
