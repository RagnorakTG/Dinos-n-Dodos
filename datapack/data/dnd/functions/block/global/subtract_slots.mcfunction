####################
# Subtract from input slots
####################

## Score
scoreboard players set remove dnd.dummy 1
## Remove from slot 0
execute store result score @s dnd.dummy run data get block ~ ~ ~ Items[{Slot:0b}].Count
scoreboard players operation @s dnd.dummy -= remove dnd.dummy
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get @s dnd.dummy
## Remove from slot 6
execute store result score @s dnd.dummy run data get block ~ ~ ~ Items[{Slot:6b}].Count
scoreboard players operation @s dnd.dummy -= remove dnd.dummy
execute store result block ~ ~ ~ Items[{Slot:6b}].Count byte 1 run scoreboard players get @s dnd.dummy
## Remove self from dummy
scoreboard players reset @s dnd.dummy