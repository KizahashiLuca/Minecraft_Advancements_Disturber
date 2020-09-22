#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect Page Respawn
scoreboard objectives add TurnPageTmp dummy
scoreboard players operation @s TurnPageTmp = @s TurnPageNum
scoreboard players operation @s[scores={TurnPageNum=0,TurnPageLeft=1}] TurnPageTmp = @s TurnPageMax
execute if score @s[scores={TurnPageRight=1}] TurnPageNum = @s TurnPageMax run scoreboard players set @s TurnPageTmp 0
scoreboard players remove @s[scores={TurnPageNum=1..,TurnPageLeft=1}] TurnPageTmp 1
execute unless score @s[scores={TurnPageRight=1}] TurnPageNum = @s TurnPageMax run scoreboard players add @s TurnPageTmp 1
scoreboard players operation @s TurnPageNum = @s TurnPageTmp
scoreboard objectives remove TurnPageTmp

## Set Scoreboard
scoreboard players operation @s TargetOfRespawn = @s TurnPageNum
scoreboard players operation @s TargetOfRespawn *= #mad 10

## Send a Common Message
tellraw @s ["",{"text":"\n----------------------------------","color":"white"}]
tellraw @s ["",{"text":"リスポーンビーコン 設定","color":"white","bold":true}]
tellraw @s ["",{"text":"  誰を復活させますか?","color":"white"}]

## Send Triggers
scoreboard players set @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"復活","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"復活"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"予言","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 2"},"hoverEvent":{"action":"show_text","value":[{"text":"予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"予言","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 3"},"hoverEvent":{"action":"show_text","value":[{"text":"予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"予言","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"予言","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 5"},"hoverEvent":{"action":"show_text","value":[{"text":"予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"予言","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 6"},"hoverEvent":{"action":"show_text","value":[{"text":"予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"予言","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 7"},"hoverEvent":{"action":"show_text","value":[{"text":"予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"予言","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 8"},"hoverEvent":{"action":"show_text","value":[{"text":"予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"予言","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 9"},"hoverEvent":{"action":"show_text","value":[{"text":"予言"}]},"color":"green","bold":true}]
scoreboard players add @s TargetOfRespawn 1
execute as @a if score @p[scores={NumRespawnBeacon=1..,Role=1}] TargetOfRespawn = @s NumOfRespawn unless score @p[scores={NumRespawnBeacon=1..,Role=1}] NumOfRespawn = @s NumOfRespawn run tellraw @p[scores={NumRespawnBeacon=1..,Role=1}] ["",{"text":"    ","color":"white"},{"selector":"@s","color":"white"},{"text":" > ","color":"white"},{"text":"予言","clickEvent":{"action":"run_command","value":"/trigger RespawnTrigger set 10"},"hoverEvent":{"action":"show_text","value":[{"text":"予言"}]},"color":"green","bold":true}]

## Send Page Respawn
scoreboard players operation @s PageNumer = @s TurnPageNum
scoreboard players operation @s PageDenom = @s TurnPageMax
scoreboard players add @s PageNumer 1
scoreboard players add @s PageDenom 1
execute if score @s TurnPageMax matches 1.. run tellraw @s ["",{"text":"    ","color":"white"},{"text":"<","clickEvent":{"action":"run_command","value":"/trigger TurnPageLeft set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"前のページへ"}]},"color":"green","bold":true},{"text":"  ( ","color":"white"},{"score":{"name":"@s","objective":"PageNumer"},"color":"white"},{"text":" / ","color":"white"},{"score":{"name":"@s","objective":"PageDenom"},"color":"white"},{"text":" )  ","color":"white"},{"text":">","clickEvent":{"action":"run_command","value":"/trigger TurnPageRight set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"次のページへ"}]},"color":"green","bold":true}]

## Send a Common Message
tellraw @s ["",{"text":"----------------------------------\n","color":"white"}]

## Reset Scoreboard
scoreboard players reset @s PageNumer
scoreboard players reset @s PageDenom
scoreboard players reset @s TargetOfRespawn