#!/bin/bash

## 冒頭コメント
function filecomment() {
  cat <<EOF > $1
#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.21
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################
EOF
}

## ポジション設定関数
function set_position() {
  X_LEFT=$1         # 左端のX座標
  X_RIGHT=$2        # 右端のX座標
  X_COLS=$3         # 最大列数
  X_COLS_MIN=$4     # 次の行に折り返す最小列数
  Y_UP=$5           # 上端のY座標
  Y_DOWN=$6         # 下端のY座標
  Y_ROWS=$7         # 最大行数
  NUM_ENTITIES=$(( X_COLS * Y_ROWS ))   # 最大エンティティ数
  
  ## 行間隔算出
  X_STEP=$(echo "scale=5; ($X_LEFT - $X_RIGHT) / ($X_COLS - 1)" | bc)
  Y_STEP=$(echo "scale=5; ($Y_UP - $Y_DOWN) / ($Y_ROWS - 1)" | bc)

  json="{"
  for count in $(seq 1 $NUM_ENTITIES); do
    json+="\"$count\":{"

    ## 実際に使用する行数を計算
    if [ $count -eq 1 ]; then
      USED_ROWS=1
    else
      USED_ROWS=$(( (count - 1) / X_COLS_MIN + 1 ))
      if [ $USED_ROWS -gt $Y_ROWS ]; then
        USED_ROWS=$Y_ROWS
      fi
    fi
    
    ## 中心に配置されるようにY座標の開始位置を調整
    TOTAL_USED_HEIGHT=$(echo "scale=5; ($USED_ROWS - 1) * $Y_STEP" | bc)
    Y_START=$(echo "scale=5; ($Y_UP + $Y_DOWN) / 2 + $TOTAL_USED_HEIGHT / 2" | bc)

    INDEX=1
    for row in $(seq 0 $((USED_ROWS - 1))); do
      # 各行のY座標
      Y=$(echo "scale=5; $Y_START - $row * $Y_STEP" | bc | sed -e 's/^\./0./g' -e 's/^-\./-0./g')

      # 各行のエリアごとのX座標計算
      ROW_COUNT=$(( (count + USED_ROWS - row - 1) / USED_ROWS )) # 各行のエンティティ数
      X_START=$(echo "scale=5; ($X_LEFT + $X_RIGHT) / 2 + ($ROW_COUNT - 1) * $X_STEP / 2" | bc)

      # 各行にエンティティを配置
      for i in $(seq 0 $((ROW_COUNT - 1))); do
        if [ $INDEX -gt $count ]; then break; fi  # 全エンティティが配置されたら終了
        X=$(echo "scale=5; $X_START - $i * $X_STEP" | bc | sed -e 's/^\./0./g' -e 's/^-\./-0./g')
        json+="\"$INDEX\":{\"x\":$X,\"y\":$Y,\"z\":0.0},"
        INDEX=$((INDEX + 1))
      done
      if [ $INDEX -gt $count ]; then break; fi  # 全エンティティが配置されたら終了
    done

    ## 最後のカンマを削除し、エンティティ数のオブジェクトを閉じる
    json="${json%,}"
    json+="},"
  done
  
  ## 最後のカンマを削除し、JSON全体を閉じる
  json="${json%,}"
  json+="}"

  ## 戻り値
  eval "$8=\$json"
}

## ファイルパス
BASE_DIR=$(cd $(dirname $0); pwd)
STORAGE_FILE=${BASE_DIR}/data/mad/function/system/start/initialize/storages/display.mcfunction
if [ -e "${STORAGE_FILE}" ]; then
  rm "${STORAGE_FILE}"
fi
filecomment "${STORAGE_FILE}"

## チーム所属無し 座標
set_position 1.25 -1.25 8 5 0.35 -0.25 3 ret0
set_position 1.25 -1.25 10 6 -0.65 -0.95 2 ret
echo "" >> "${STORAGE_FILE}"
cat << EOF >> "${STORAGE_FILE}"
## チーム所属無し 座標
data modify storage mad: display_team_member.0.no set value ${ret0}
data modify storage mad: display_team_member.1.no set value ${ret}
data modify storage mad: display_team_member.2.no set value ${ret}
data modify storage mad: display_team_member.3.no set value ${ret}
data modify storage mad: display_team_member.4.no set value ${ret}
EOF

## 2チーム 座標
set_position 1.26875 0.18125 4 4 0.35 -0.25 3 red
set_position -0.18125 -1.26875 4 4 0.35 -0.25 3 blue
echo "" >> "${STORAGE_FILE}"
cat << EOF >> "${STORAGE_FILE}"
## 2チーム 座標
data modify storage mad: display_team_member.2.a set value ${red}
data modify storage mad: display_team_member.2.b set value ${blue}
EOF

## 3チーム 座標
set_position 1.28 0.64 3 3 0.35 -0.25 3 red
set_position 0.32 -0.32 3 3 0.35 -0.25 3 blue
set_position -0.64 -1.28 3 3 0.35 -0.25 3 yellow
echo "" >> "${STORAGE_FILE}"
cat << EOF >> "${STORAGE_FILE}"
## 3チーム 座標
data modify storage mad: display_team_member.3.a set value ${red}
data modify storage mad: display_team_member.3.b set value ${blue}
data modify storage mad: display_team_member.3.c set value ${yellow}
EOF

## 4チーム 座標
set_position 1.26875 0.90625 2 2 0.35 -0.25 3 red
set_position 0.54375 0.18125 2 2 0.35 -0.25 3 blue
set_position -0.18125 -0.54375 2 2 0.35 -0.25 3 yellow
set_position -0.90625 -1.26875 2 2 0.35 -0.25 3 green
echo "" >> "${STORAGE_FILE}"
cat << EOF >> "${STORAGE_FILE}"
## 4チーム 座標
data modify storage mad: display_team_member.4.a set value ${red}
data modify storage mad: display_team_member.4.b set value ${blue}
data modify storage mad: display_team_member.4.c set value ${yellow}
data modify storage mad: display_team_member.4.d set value ${green}
EOF