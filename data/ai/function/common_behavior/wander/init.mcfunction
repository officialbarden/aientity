# step 1: randomly choose whether the ai entity will immediately wander to a node or remain in position for a small time.
function ai:common_behavior/wander/choice/decide

# prevent recursion:
tag @s add ai.wander