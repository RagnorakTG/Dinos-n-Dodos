####################
# Entity Tick
####################

## Global
execute if entity @s[tag=dnd.entity,tag=!dnd.block] run function dnd:entity/global/tick
## Blocks
execute if entity @s[tag=dnd.block] run function dnd:block/tick
## Anti-villager fix
execute if entity @s[type=#dnd:antivillager,tag=!global.ignore] run team join dnd.antivillager @s
execute if entity @s[type=wandering_trader,tag=dnd.entity] run team join dnd.antivillager @s