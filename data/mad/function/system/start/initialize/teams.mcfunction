#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 個人戦用チーム
team add mad_player \
  {\
    translate: '参加者',\
  }
team modify mad_player color white
team modify mad_player friendlyFire true
team modify mad_player collisionRule always
team modify mad_player nametagVisibility always
team modify mad_player seeFriendlyInvisibles false
team modify mad_player deathMessageVisibility never
team join mad_player @a[predicate=mad:player/]
tag @a[predicate=mad:player/] add mad_indie_player

## チーム戦用チーム - 赤チーム
team add mad_team_a \
  {\
    translate: '赤チーム',\
  }
team modify mad_team_a color red
team modify mad_team_a friendlyFire true
team modify mad_team_a collisionRule always
team modify mad_team_a nametagVisibility always
team modify mad_team_a seeFriendlyInvisibles false
team modify mad_team_a deathMessageVisibility never

## チーム戦用チーム - 青チーム
team add mad_team_b \
  {\
    translate: '青チーム',\
  }
team modify mad_team_b color blue
team modify mad_team_b friendlyFire true
team modify mad_team_b collisionRule always
team modify mad_team_b nametagVisibility always
team modify mad_team_b seeFriendlyInvisibles false
team modify mad_team_b deathMessageVisibility never

## チーム戦用チーム - 黄チーム
team add mad_team_c \
  {\
    translate: '黄チーム',\
  }
team modify mad_team_c color yellow
team modify mad_team_c friendlyFire true
team modify mad_team_c collisionRule always
team modify mad_team_c nametagVisibility always
team modify mad_team_c seeFriendlyInvisibles false
team modify mad_team_c deathMessageVisibility never

## チーム戦用チーム - 緑チーム
team add mad_team_d \
  {\
    translate: '緑チーム',\
  }
team modify mad_team_d color green
team modify mad_team_d friendlyFire true
team modify mad_team_d collisionRule always
team modify mad_team_d nametagVisibility always
team modify mad_team_d seeFriendlyInvisibles false
team modify mad_team_d deathMessageVisibility never

## 当たり判定用チーム
team add mad_never_collision
team modify mad_never_collision color white
team modify mad_never_collision friendlyFire false
team modify mad_never_collision collisionRule never
team modify mad_never_collision nametagVisibility never
team modify mad_never_collision seeFriendlyInvisibles false
team modify mad_never_collision deathMessageVisibility never
