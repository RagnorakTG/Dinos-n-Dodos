####################
# Extracts the DNA from a DNA Needle
####################

# Place DNA into 5th Slot
loot replace block ~ ~ ~ container.5 loot dnd:gameplay/base_items/dna_vial
# Copy Information
data modify block ~ ~ ~ Items[{Slot:5b}].tag.dnd.storage set from block ~ ~ ~ Items[{Slot:3b}].tag.dnd.storage
data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore set from block ~ ~ ~ Items[{Slot:3b}].tag.display.Lore
## Yellow Name
function dnd:block/global/yellow_name/dna_vial
# Replace Slot 3
loot replace block ~ ~ ~ container.3 loot dnd:items/needle
