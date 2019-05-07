#Calculations
scoreboard players set Weight_Multiply Multipliers 2
scoreboard players set Speed_Multiply Multipliers 10
scoreboard players set Speed_Divide Multipliers 50
scoreboard players set Immune_Multiply Multipliers -1
scoreboard players set Group_Multiply Multipliers -11
scoreboard players set Group_Add Multipliers 400
#Assign ID
execute if entity @s[tag=!dinoHasId] run scoreboard players operation @s Dinosaur_ID = $idGiver Dinosaur_ID
execute if entity @s[tag=!dinoHasId] run scoreboard players add $idGiver Dinosaur_ID 1
execute if entity @s[tag=!dinoHasId] run tag @s add dinoHasId

##Calculations
## Weight      H + L + W x 2 = T
execute as @s run scoreboard players set @s Weight 0
execute as @s run scoreboard players operation @s Weight += @s Temp_Height
execute as @s run scoreboard players operation @s Weight += @s Temp_Length
execute as @s run scoreboard players operation @s Weight += @s Temp_Width
execute as @s run scoreboard players operation @s Weight *= Weight_Multiply Multipliers
execute as @s run tag @s add weight
## Immune_System     I = -1T + 100
execute as @s run scoreboard players set @s Immune_System 0
execute as @s run scoreboard players operation @s Immune_System += @s Weight
execute as @s run scoreboard players operation @s Immune_System *= Immune_Multiply Multipliers
execute as @s run scoreboard players operation @s Immune_System += Speed_Add Multipliers
execute as @s run tag @s add immune
## Max_Group      100Z = -11.T + 1300
execute as @s run scoreboard players set @s Max_Group 0
execute as @s run scoreboard players operation @s Max_Group += @s Weight
execute as @s run scoreboard players operation @s Max_Group *= Group_Multiply Multipliers
execute as @s run scoreboard players operation @s Max_Group += Group_Add Multipliers
execute as @s run scoreboard players operation @s Max_Group /= Speed_Add Multipliers
execute as @s run scoreboard players operation @s Max_Group /= Speed_Multiply Multipliers
execute as @s run tag @s add group
## Max_Grounds      T x G x 2 = G2
execute as @s run scoreboard players set @s Max_Grounds 0
execute as @s run scoreboard players operation @s Max_Grounds += @s Weight
execute as @s run scoreboard players operation @s Max_Grounds *= @s Max_Group
execute as @s run scoreboard players operation @s Max_Grounds *= Weight_Multiply Multipliers
execute as @s run tag @s add grounds
## Max_Age
execute as @s run scoreboard players set @s Max_Age 0
execute as @s run scoreboard players operation @s Max_Age += @s Weight
execute as @s run scoreboard players operation @s Max_Age *= Weight_Multiply Multipliers
execute as @s run tag @s add death
## Current_Happiness
execute as @s[tag=!happiness] run scoreboard players set @s Current_Happines 100
execute as @s[tag=!happiness] run tag @s add happiness
execute as @s[tag=happiness] run scoreboard players set @s[scores={Current_Happines=101..}] Current_Happines 100
execute as @s[tag=happiness] run scoreboard players set @s[scores={Current_Happines=..-1}] Current_Happines 0
execute as @s[tag=happiness,scores={Gain_Happiness=..-1200}] run scoreboard players remove @s Current_Happines 1
execute as @s[tag=happiness,scores={Gain_Happiness=1200..}] run scoreboard players add @s Current_Happines 1
execute as @s[tag=happiness,scores={Gain_Happiness=..-1200}] run scoreboard players set @s Gain_Happiness 0
execute as @s[tag=happiness,scores={Gain_Happiness=1200..}] run scoreboard players set @s Gain_Happiness 0
##Current_Boredom
execute as @s[tag=!boredom] run scoreboard players set @s Current_Boredom 0
execute as @s[tag=!boredom] run tag @s add boredom
execute as @s[tag=boredom] run scoreboard players set @s[scores={Current_Boredom=101..}] Current_Boredom 100
execute as @s[tag=boredom] run scoreboard players set @s[scores={Current_Boredom=..-1}] Current_Boredom 0
execute as @s[tag=boredom,scores={Gain_Boredom=..-1200}] run scoreboard players remove @s Current_Boredom 1
execute as @s[tag=boredom,scores={Gain_Boredom=1200..}] run scoreboard players add @s Current_Boredom 1
execute as @s[tag=boredom,scores={Gain_Boredom=..-1200}] run scoreboard players set @s Gain_Boredom 0
execute as @s[tag=boredom,scores={Gain_Boredom=1200..}] run scoreboard players set @s Gain_Boredom 0
