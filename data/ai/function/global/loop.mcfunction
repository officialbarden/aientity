#> If Entity is AI, setup initialization for wandering.
execute as @e[tag=ai.entity,tag=!ai.wander] at @s run function ai:common_behavior/wander/init
#> If Entity has a type of timer, tick the timer down
execute as @e[tag=ai.entity,tag=ai.wander.timer] at @s if score @s ai.timer matches 1.. run scoreboard players remove @s ai.timer 1
#> If Timer ended, make a new choice.
execute as @e[tag=ai.entity,tag=ai.wander.timer] at @s if score @s ai.timer matches 0 run function ai:common_behavior/wander/choice/decide

#> move AI entity
execute as @e[tag=ai.wander.walk] at @s run tp @s ^ ^ ^0.1

#> if reached node, make new decision
execute as @e[tag=ai.wander.walk] at @s if entity @e[tag=ai.wander.node,distance=..0.1] run function ai:common_behavior/wander/choice/decide

#> remove tags:
tag @e remove new.node.temp

#> kill nodes if no AI entity
execute unless entity @e[tag=ai.entity] run kill @e[tag=ai.wander.node]