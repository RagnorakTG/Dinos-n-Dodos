####################
# Spawns a projection above the projector
####################

execute if entity @s[tag=dnd.projector.north] run summon wandering_trader ~ ~ ~ {Rotation:[180F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["global.ignore","global.ignore.pos","global.ignore.gui","global.ignore.kill","dnd.trader_ignore","dnd.projection","dnd.entity","dnd.adult","dnd.idle"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:11785983},CustomModelData:409998}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Offers:{}}
execute if entity @s[tag=dnd.projector.south] run summon wandering_trader ~ ~ ~ {Rotation:[0F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["global.ignore","global.ignore.pos","global.ignore.gui","global.ignore.kill","dnd.trader_ignore","dnd.projection","dnd.entity","dnd.adult","dnd.idle"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:11785983},CustomModelData:409998}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Offers:{}}
execute if entity @s[tag=dnd.projector.east] run summon wandering_trader ~ ~ ~ {Rotation:[-90F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["global.ignore","global.ignore.pos","global.ignore.gui","global.ignore.kill","dnd.trader_ignore","dnd.projection","dnd.entity","dnd.adult","dnd.idle"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:11785983},CustomModelData:409998}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Offers:{}}
execute if entity @s[tag=dnd.projector.west] run summon wandering_trader ~ ~ ~ {Rotation:[90F,0F],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["global.ignore","global.ignore.pos","global.ignore.gui","global.ignore.kill","dnd.trader_ignore","dnd.projection","dnd.entity","dnd.adult","dnd.idle"],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:11785983},CustomModelData:409998}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Offers:{}}