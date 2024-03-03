#Make Snowballs do 1/2 heart damage everything except blaze's 
execute as @e[type=snowball, nbt={LeftOwner:1b}] at @s run execute as @e[distance=..2, type=!snowball, type=!blaze] run damage @s 1 arrow by @p[limit=1, distance=1..]
#Hard Snowballs do 2x Damage = 1 heart
execute as @e[type=snowball, nbt={LeftOwner:1b, Item:{tag:{CustomModelData:226590}}}] at @s run execute as @e[distance=..2, type=!snowball, type=!blaze] run damage @s 2 arrow by @p[limit=1, distance=1..]

#Drop Crafting (cobblestone+snowball)
execute as @e[type=item, limit=1, nbt={Item:{id:"minecraft:cobblestone", Count:1b}}] at @s as @e[type=item, limit=1, nbt={Item:{id:"minecraft:snowball", Count:1b}}, distance = ..1] at @s run summon item ~ ~ ~ {Tags:["fresh_snowball_craft_cobble"],Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Hard Snowball"}'}, CustomModelData:226590}}}
execute as @e[tag=fresh_snowball_craft_cobble] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:snowball", Count:1b}}, sort=nearest, limit=1]
execute as @e[tag=fresh_snowball_craft_cobble] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:cobblestone", Count:1b}}, sort=nearest, limit=1]
execute as @e[tag=fresh_snowball_craft_cobble] at @s run playsound minecraft:block.amethyst_block.break block @p
execute as @e[tag=fresh_snowball_craft_cobble] at @s run particle minecraft:cloud ~ ~0.5 ~ 0.25 0.5 0.25 0.1 25 normal 
execute as @e[tag=fresh_snowball_craft_cobble] at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0.5 10 normal 
execute as @e[tag=fresh_snowball_craft_cobble, limit=1] run tag @s remove fresh_snowball_craft_cobble

#Drop Crafting (deepslate+snowball)
execute as @e[type=item, limit=1, nbt={Item:{id:"minecraft:deepslate", Count:1b}}] at @s as @e[type=item, limit=1, nbt={Item:{id:"minecraft:snowball", Count:1b}}, distance = ..1] at @s run summon item ~ ~ ~ {Tags:["fresh_snowball_craft_deepslate"],Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Hard Snowball"}'}, CustomModelData:226590}}}
execute as @e[tag=fresh_snowball_craft_deepslate] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:snowball", Count:1b}}, sort=nearest, limit=1]
execute as @e[tag=fresh_snowball_craft_deepslate] at @s run kill @e[type=item, nbt={Item:{id:"minecraft:deepslate", Count:1b}}, sort=nearest, limit=1]
execute as @e[tag=fresh_snowball_craft_deepslate] at @s run playsound minecraft:block.amethyst_block.break block @p
execute as @e[tag=fresh_snowball_craft_deepslate] at @s run particle minecraft:cloud ~ ~0.5 ~ 0.25 0.5 0.25 0.1 25 normal 
execute as @e[tag=fresh_snowball_craft_deepslate] at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.5 0.5 0.5 10 normal 
execute as @e[tag=fresh_snowball_craft_deepslate, limit=1] run tag @s remove fresh_snowball_craft_deepslate