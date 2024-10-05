#> once reached pass node, return to original path.
kill @e[tag=ai.pass.node]
kill @e[tag=ai.wall.node]
function ai:common_behavior/wander/walk/find_node/init