####################
# Global Tick
####################

## Enity Functions
execute as @e[sort=arbitrary,tag=dnd.entity] at @s run function dnd:entity/tick
execute as @e[sort=arbitrary,type=#dnd:antivillager] at @s run function dnd:entity/tick