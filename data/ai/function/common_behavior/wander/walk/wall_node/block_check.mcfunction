summon creeper ^ ^ ^1 {Health:0f}

execute if block ^ ^ ^1 #air positioned ^ ^ ^1 run function ai:common_behavior/wander/walk/pass_node/init
execute unless block ^ ^ ^1 #air positioned ^ ^ ^1 run function ai:common_behavior/wander/walk/wall_node/block_check