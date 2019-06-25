### pathfinding
## Prepare
# Add to scoreboard
scoreboard players add Time pathfinding_time 1

## Create Path
# Step 1 (Create Path Prt.1)
execute if score Time pathfinding_time matches 1 run execute as @e[tag=pathfinding,tag=!done] at @s unless entity @e[tag=teleport] run execute positioned ~1 ~ ~ unless entity @e[tag=pathfinding,distance=..0.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["find"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_wool",Count:1b}]}
execute if score Time pathfinding_time matches 1 run execute as @e[tag=pathfinding,tag=!done] at @s unless entity @e[tag=teleport] run execute positioned ~-1 ~ ~ unless entity @e[tag=pathfinding,distance=..0.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["find"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_wool",Count:1b}]}
execute if score Time pathfinding_time matches 1 run execute as @e[tag=pathfinding,tag=!done] at @s unless entity @e[tag=teleport] run execute positioned ~ ~ ~1 unless entity @e[tag=pathfinding,distance=..0.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["find"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_wool",Count:1b}]}
execute if score Time pathfinding_time matches 1 run execute as @e[tag=pathfinding,tag=!done] at @s unless entity @e[tag=teleport] run execute positioned ~ ~ ~-1 unless entity @e[tag=pathfinding,distance=..0.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["find"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_wool",Count:1b}]}
execute if score Time pathfinding_time matches 1 run execute as @s[tag=pathfinding,tag=done] at @s run scoreboard players operation @e[tag=pathfinding,sort=nearest,tag=!shared,distance=0.1..5] Pathfind_ID = @s Dinosaur_ID
execute if score Time pathfinding_time matches 1 run execute as @s[tag=pathfinding,tag=done] at @s run execute as @e[tag=pathfinding,sort=nearest,tag=!shared,distance=0.1..5] run tag @s add shared
# Step 3 (Detect for blocks)
execute if score Time pathfinding_time matches 2 run execute as @e[tag=find] at @s unless block ~ ~1 ~ #minecraft:move_through_heavy run kill @s
execute if score Time pathfinding_time matches 2 run execute as @e[tag=find] at @s unless block ~ ~ ~ #minecraft:move_through_heavy run tp @s ~ ~1 ~
execute if score Time pathfinding_time matches 2 run execute as @e[tag=find] at @s if block ~ ~-2 ~ #minecraft:move_through_heavy if block ~ ~-1 ~ #minecraft:move_through_heavy run kill @s
execute if score Time pathfinding_time matches 2 run execute as @e[tag=find] at @s if block ~ ~-1 ~ #minecraft:move_through_heavy unless block ~ ~-2 ~ #minecraft:move_through_heavy run tp @s ~ ~-0.5 ~
execute if score Time pathfinding_time matches 2 run execute as @e[tag=find] at @s unless block ~ ~1 ~ #minecraft:move_through_heavy run kill @s
# Step 4 (Detect closest to ending)
execute if score Time pathfinding_time matches 2 run execute as @e[tag=follow] at @s run execute as @e[tag=find,tag=!pathfinding,limit=1,sort=nearest] run tag @s add pathfinding
execute if score Time pathfinding_time matches 2 run execute as @e[tag=find] unless entity @e[tag=teleport] run scoreboard players add @s pathfinding_time 1
# Step 5 (Detect if Finished?)
execute if score Time pathfinding_time matches 3 run execute as @e[tag=find,tag=!done,scores={pathfinding_time=3}] run tag @s add done
execute if score Time pathfinding_time matches 3 run execute as @e[tag=follow] at @s run execute as @e[tag=find,tag=!done,distance=..0.5] run tag @s add finished
execute if score Time pathfinding_time matches 3 run execute as @e[tag=find,tag=!pathfinding] at @s run kill @s
execute if score Time pathfinding_time matches 3 run replaceitem entity @e[tag=done] armor.head redstone_block
# Step 6 (Teleport pathfindinger to Ending)
execute if score Time pathfinding_time matches 4 run execute as @e[tag=follow] at @s if score @e[tag=find,limit=1,sort=furthest] pathfinding_time matches 50.. run tag @e[tag=find,limit=1,sort=nearest] add finished
execute if score Time pathfinding_time matches 4 run execute as @e[tag=follow] at @s if entity @e[tag=finished,distance=..2] run tag @e[tag=pathfinding,limit=1,tag=og,sort=nearest] add teleport
execute if score Time pathfinding_time matches 4 run execute as @e[tag=teleport] at @s run tp @e[tag=teleport] ~ ~ ~ facing entity @e[tag=find,sort=nearest,limit=1,distance=..5]
execute if score Time pathfinding_time matches 4 run execute as @e[tag=teleport] at @s if entity @e[tag=find,sort=nearest,limit=1,distance=..5] run tp @e[tag=teleport] ^ ^ ^0.8
execute if score Time pathfinding_time matches 4 run execute as @e[tag=teleport] at @s if entity @e[tag=find,sort=nearest,limit=1,distance=..5] run tp @e[tag=teleport] ~ ~ ~ ~ 0
execute if score Time pathfinding_time matches 4 run execute as @e[tag=teleport] at @s run kill @e[tag=find,sort=nearest,limit=1,distance=..0.5]
execute if score Time pathfinding_time matches 4 run execute as @e[tag=teleport] at @s run tag @e[tag=teleport] add done
# Step 7 (Finish Process)
execute if score Time pathfinding_time matches 5 run execute as @e[tag=teleport] at @s if entity @e[tag=follow,distance=..2] run kill @e[tag=find]
execute if score Time pathfinding_time matches 5.. run scoreboard players set Time pathfinding_time 0
