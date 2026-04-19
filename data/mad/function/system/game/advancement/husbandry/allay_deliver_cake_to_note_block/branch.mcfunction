#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 個人戦
execute if predicate mad:gamerule/match_mode/individual/ \
  as @s run \
  function mad:system/game/advancement/husbandry/allay_deliver_cake_to_note_block/individual

## チーム戦 - チーム分岐
execute if predicate mad:gamerule/match_mode/team \
  if score #mad_team_a Advancements_Husbandry_allay_deliver_cake_to_note_block matches 0 \
  as @s[predicate=mad:player/team/a] run \
  function mad:system/game/advancement/husbandry/allay_deliver_cake_to_note_block/team \
    with storage mad: team.a
execute if predicate mad:gamerule/match_mode/team \
  if score #mad_team_b Advancements_Husbandry_allay_deliver_cake_to_note_block matches 0 \
  as @s[predicate=mad:player/team/b] run \
  function mad:system/game/advancement/husbandry/allay_deliver_cake_to_note_block/team \
    with storage mad: team.b
execute if predicate mad:gamerule/match_mode/team \
  if score #mad_team_c Advancements_Husbandry_allay_deliver_cake_to_note_block matches 0 \
  as @s[predicate=mad:player/team/c] run \
  function mad:system/game/advancement/husbandry/allay_deliver_cake_to_note_block/team \
    with storage mad: team.c
execute if predicate mad:gamerule/match_mode/team \
  if score #mad_team_d Advancements_Husbandry_allay_deliver_cake_to_note_block matches 0 \
  as @s[predicate=mad:player/team/d] run \
  function mad:system/game/advancement/husbandry/allay_deliver_cake_to_note_block/team \
    with storage mad: team.d

## スコアボード設定
scoreboard players set @s[scores={Advancements_Husbandry_allay_deliver_cake_to_note_block=0}] Advancements_Husbandry_allay_deliver_cake_to_note_block 1
