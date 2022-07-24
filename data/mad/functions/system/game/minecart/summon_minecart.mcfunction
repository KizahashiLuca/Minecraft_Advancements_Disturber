#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon minecart
summon minecraft:chest_minecart ~ 320 ~ {Invulnerable:1b,Tags:["MAD_Minecart"]}
execute if predicate mad:gamerules/minecart/one_player_no_end run data modify entity @e[predicate=mad:minecart/minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/one_player_no_end"
execute if predicate mad:gamerules/minecart/one_player_with_end run data modify entity @e[predicate=mad:minecart/minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/one_player_with_end"
execute if predicate mad:gamerules/minecart/individual_no_end run data modify entity @e[predicate=mad:minecart/minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/individual_no_end"
execute if predicate mad:gamerules/minecart/individual_with_end run data modify entity @e[predicate=mad:minecart/minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/individual_with_end"
execute if predicate mad:gamerules/minecart/team_no_end run data modify entity @e[predicate=mad:minecart/minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/team_no_end"
execute if predicate mad:gamerules/minecart/team_with_end run data modify entity @e[predicate=mad:minecart/minecart,limit=1] LootTable set value "mad:ongame/chest_minecart/team_with_end"

## Send messages
tellraw @a ["",{"text":"[物資投下] 物資が ","color":"green","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}}],"hoverEvent":{"action":"show_text","contents":{"text":"スペクテイター時、\nクリックでテレポート","color":"white","bold":false,"italic":false}},"clickEvent":{"action":"run_command","value":"/trigger TeleportMinecart set 1"},"color":"green","bold":false,"italic":false},{"text":" に投下されました。","color":"green","bold":false,"italic":false}]