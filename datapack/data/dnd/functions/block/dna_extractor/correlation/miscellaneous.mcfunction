####################
# DNA Correlation for Miscellaneous items
####################

## wheat_seeds
data modify storage dnd:storage root.extractor set from block ~ ~ ~ Items[{Slot:3b}]
execute store success score temp dnd.dummy run data modify storage dnd:storage root.extractor.id set value "minecraft:wheat_seeds"
execute if score temp dnd.dummy matches 0 run data modify storage dnd:storage root.extracted set value {id:{accuracy:100,dna:{RegenRate:300},entity:{id:"minecraft:wheat_seeds",identifier:"minecraft:plant",CustomPlant:0,eggData:{hasEgg:1b,CustomEgg:0b,id:"minecraft:wheat_seeds"}}},structure_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.structure.wheat_seeds"}'],accuracy_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.item.accuracy","with":[100]}']}
## wheat
data modify storage dnd:storage root.extractor set from block ~ ~ ~ Items[{Slot:3b}]
execute store success score temp dnd.dummy run data modify storage dnd:storage root.extractor.id set value "minecraft:wheat"
execute if score temp dnd.dummy matches 0 run data modify storage dnd:storage root.extracted set value {id:{accuracy:100,dna:{RegenRate:300},entity:{id:"minecraft:wheat_seeds",identifier:"minecraft:plant",CustomPlant:0,eggData:{hasEgg:1b,CustomEgg:0b,id:"minecraft:wheat_seeds"}}},structure_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.structure.wheat_seeds"}'],accuracy_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.item.accuracy","with":[100]}']}
## cocoa_beans
data modify storage dnd:storage root.extractor set from block ~ ~ ~ Items[{Slot:3b}]
execute store success score temp dnd.dummy run data modify storage dnd:storage root.extractor.id set value "minecraft:cocoa_beans"
execute if score temp dnd.dummy matches 0 run data modify storage dnd:storage root.extracted set value {id:{accuracy:100,dna:{RegenRate:600},entity:{id:"minecraft:cocoa_beans",identifier:"minecraft:plant",CustomPlant:0,eggData:{hasEgg:1b,CustomEgg:0b,id:"minecraft:cocoa_beans"}}},structure_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.structure.cocoa_beans"}'],accuracy_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.item.accuracy","with":[100]}']}
## pumpkin_seeds
data modify storage dnd:storage root.extractor set from block ~ ~ ~ Items[{Slot:3b}]
execute store success score temp dnd.dummy run data modify storage dnd:storage root.extractor.id set value "minecraft:pumpkin_seeds"
execute if score temp dnd.dummy matches 0 run data modify storage dnd:storage root.extracted set value {id:{accuracy:100,dna:{RegenRate:300},entity:{id:"minecraft:pumpkin_seeds",identifier:"minecraft:plant",CustomPlant:0,eggData:{hasEgg:1b,CustomEgg:0b,id:"minecraft:pumpkin_seeds"}}},structure_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.structure.pumpkin_seeds"}'],accuracy_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.item.accuracy","with":[100]}']}
## melon_seeds
data modify storage dnd:storage root.extractor set from block ~ ~ ~ Items[{Slot:3b}]
execute store success score temp dnd.dummy run data modify storage dnd:storage root.extractor.id set value "minecraft:melon_seeds"
execute if score temp dnd.dummy matches 0 run data modify storage dnd:storage root.extracted set value {id:{accuracy:100,dna:{RegenRate:300},entity:{id:"minecraft:melon_seeds",identifier:"minecraft:plant",CustomPlant:0,eggData:{hasEgg:1b,CustomEgg:0b,id:"minecraft:melon_seeds"}}},structure_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.structure.melon_seeds"}'],accuracy_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.item.accuracy","with":[100]}']}
## nether_wart
data modify storage dnd:storage root.extractor set from block ~ ~ ~ Items[{Slot:3b}]
execute store success score temp dnd.dummy run data modify storage dnd:storage root.extractor.id set value "minecraft:nether_wart"
execute if score temp dnd.dummy matches 0 run data modify storage dnd:storage root.extracted set value {id:{accuracy:100,dna:{RegenRate:900},entity:{id:"minecraft:nether_wart",identifier:"minecraft:plant",CustomPlant:0,eggData:{hasEgg:1b,CustomEgg:0b,id:"minecraft:nether_wart"}}},structure_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.structure.nether_wart"}'],accuracy_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.item.accuracy","with":[100]}']}
## chorus_fruit
data modify storage dnd:storage root.extractor set from block ~ ~ ~ Items[{Slot:3b}]
execute store success score temp dnd.dummy run data modify storage dnd:storage root.extractor.id set value "minecraft:chorus_fruit"
execute if score temp dnd.dummy matches 0 run data modify storage dnd:storage root.extracted set value {id:{accuracy:100,dna:{RegenRate:900},entity:{id:"minecraft:chorus_fruit",identifier:"minecraft:plant",CustomPlant:0,eggData:{hasEgg:1b,CustomEgg:0b,id:"minecraft:chorus_fruit"}}},structure_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.structure.chorus_fruit"}'],accuracy_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.item.accuracy","with":[100]}']}
## beetroot_seeds
data modify storage dnd:storage root.extractor set from block ~ ~ ~ Items[{Slot:3b}]
execute store success score temp dnd.dummy run data modify storage dnd:storage root.extractor.id set value "minecraft:beetroot_seeds"
execute if score temp dnd.dummy matches 0 run data modify storage dnd:storage root.extracted set value {id:{accuracy:100,dna:{RegenRate:300},entity:{id:"minecraft:beetroot_seeds",identifier:"minecraft:plant",CustomPlant:0,eggData:{hasEgg:1b,CustomEgg:0b,id:"minecraft:beetroot_seeds"}}},structure_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.structure.beetroot_seeds"}'],accuracy_lore:['{"italic":false,"color":"gray","translate":"lore.dnd.item.accuracy","with":[100]}']}
