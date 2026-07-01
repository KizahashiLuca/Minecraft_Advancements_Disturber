#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## トリガーをリセット
#### スペクテイター
scoreboard players set @s SpectatorTrigger 0
scoreboard players enable @s SpectatorTrigger
#### ゲーム制御
scoreboard players set @s ExecuteTrigger 0
scoreboard players enable @s ExecuteTrigger
#### チーム編成設定
scoreboard players set @s SetTeamTrigger 0
execute if predicate mad:phase/setting/team_member run \
  scoreboard players enable @s SetTeamTrigger
#### テレポート
scoreboard players set @s TeleportTrigger 0
scoreboard players enable @s[predicate=mad:player/spectator] TeleportTrigger
#### ゲーム終了
scoreboard players set @s ExitTrigger 0
scoreboard players enable @s[predicate=mad:player/host] ExitTrigger
