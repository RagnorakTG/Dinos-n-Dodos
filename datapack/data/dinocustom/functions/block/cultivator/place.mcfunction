####################
# Cultivator Place
####################

execute if block ~ ~ ~ furnace[facing=north] run summon armor_stand ~ ~ ~ {Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:400006}}],Tags:["global.ignore","dnd.block","dnd.entity","dnd.block_placing","dnd.cultivator","dnd.cultivator.north"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if block ~ ~ ~ furnace[facing=south] run summon armor_stand ~ ~ ~ {Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:400006}}],Tags:["global.ignore","dnd.block","dnd.entity","dnd.block_placing","dnd.cultivator","dnd.cultivator.south"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if block ~ ~ ~ furnace[facing=east] run summon armor_stand ~ ~ ~ {Rotation:[-90F,0F],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:400006}}],Tags:["global.ignore","dnd.block","dnd.entity","dnd.block_placing","dnd.cultivator","dnd.cultivator.east"],NoGravity:1b,Invisible:1b,Marker:1b}
execute if block ~ ~ ~ furnace[facing=west] run summon armor_stand ~ ~ ~ {Rotation:[90F,0F],ArmorItems:[{},{},{},{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:400006}}],Tags:["global.ignore","dnd.block","dnd.entity","dnd.block_placing","dnd.cultivator","dnd.cultivator.west"],NoGravity:1b,Invisible:1b,Marker:1b}
execute at @e[tag=dnd.cultivator] if block ~ ~ ~ furnace run setblock ~ ~ ~ dispenser{CustomName:'{"translate":"block.dnd.cultivator"}'}