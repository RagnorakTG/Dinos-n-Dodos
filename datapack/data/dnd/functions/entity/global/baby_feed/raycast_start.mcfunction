####################
# Raycast Start
####################

scoreboard players set @s dnd.dummy 0
execute at @s anchored eyes run function dnd:entity/global/baby_feed/raycast
advancement revoke @s only dnd:utility/entity/feed_juvenile/meat
advancement revoke @s only dnd:utility/entity/feed_juvenile/plant
advancement revoke @s only dnd:utility/entity/feed_juvenile/poison
