execute as @s[tag=velociraptor] run tag @s add dinosaur
execute as @s[tag=velociraptor] run tag @s add carnivore
execute as @s[tag=velociraptor] run tag @s add social
execute as @s[tag=velociraptor] run tag @s add terrestrial
scoreboard players set @s[tag=velociraptor] Height 1
scoreboard players set @s[tag=velociraptor] Length 3
scoreboard players set @s[tag=velociraptor] Width 1
scoreboard players set @s[tag=velociraptor] Head_Height 1
scoreboard players set @s[tag=velociraptor] Max_Group 6
scoreboard players set @s[tag=velociraptor] Min_Group 3
scoreboard players set @s[tag=velociraptor] Max_Age 60
execute as @e[tag=velociraptor_egg,tag=hatch] summon zombie ~ ~ ~
execute as @e[tag=velociraptor_egg,tag=hatch] run tag @s remove hatch
execute as @e[tag=velociraptor_egg,scores={Egg_Ammount=0}] run kill @s
