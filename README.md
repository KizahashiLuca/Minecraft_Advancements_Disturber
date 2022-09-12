# Minecraft Advancements Disturber
__*進捗をクリアしながら、唯一の生存を目指せ！*__

サバイバルモードで、各プレイヤーごとに進捗を解除しつつ、  
最後まで生き残ることを目指すPvPデータパック

## Caution!!
 - マインクラフト Java版 v1.19以降対応です。
 - 実況でご利用の際は以下項目の記載をお願い致します。
   - 企画者 : ぽたーじゅ
     - Twitter : [https://twitter.com/potagegatop](https://twitter.com/potagegatop)
   - 作成者 : きざはしるか
     - Twitter : [https://twitter.com/KizahashiLuca](https://twitter.com/KizahashiLuca)
   - 配布元URL : [https://github.com/KizahashiLuca/minecraft_advancements_disturber](https://github.com/KizahashiLuca/minecraft_advancements_disturber)
 - このデータパックは、CC BY-SA 4.0 に準拠します。

## Download
ダウンロードは 以下リンクからお願いします。
 - Java Edition v1.19 以降対応
   - [β-2.0.1](https://github.com/KizahashiLuca/Minecraft_Advancements_Disturber/releases/tag/beta-2.0.1)
   
## ルール解説動画


https://user-images.githubusercontent.com/33852306/187057764-0011f5fc-9960-408d-8d77-a2f01877ac69.mp4



## ルール
マルチのサバイバル環境にて、各プレイヤー進捗を解除しつつ、唯一の生存を目指す

 - 生存時間を過ぎるとゲームオーバー
 - 進捗を1つ解除するごとに、生存時間が追加
 - 他プレイヤーを倒すと、そのプレイヤーの残り時間の一部が生存時間に追加
 - 勝利条件は、最後の1人（1チーム）になること
 - 行動できるのはワールドボーダーで指定されたエリアのみ
 - 一定時間ごとにエリアのどこかに支援物資が落ちてくる

※時間制限やエリアの大きさ等は設定で変更可能

チーム戦の場合、
 - チームの誰かが達成した進捗をチーム内全員で共有
 - 同じ進捗を複数回達成することはできない
 - チームメンバーが倒されると、生存時間300秒を相手チームに取られる
 - 通常デスは100秒失い、即リスポーン

### ゲームの流れ
 1. ホストプレイヤーが、以下コマンドを実行
    ```mcfunction
    /reload
    ```
 2. <ins>個人戦</ins>もしくは<ins>チーム戦</ins>をクリック
 3. 待機フェーズ30秒ののち、参加者がランダムな場所の空中にテレポート
 4. 全参加者が着地した時点で、ゲームスタート
    - 特殊アイテム入りのチェスト付きトロッコが、ランダムな場所に投下、座標は全員に通知
    - 生存者が残り1人になると、ホストプレイヤーに「終了しますか」が表示される
 5. ゲーム終了時、以下を表示
    - 生存者
    - 各参加者の達成進捗個数
    - 各参加者の支援物資獲得数

### 支援物資のルートテーブル
 - 不死のトーテム
 - ダイヤモンドのピッケル
   - 効率強化V
 - 金のブーツ
   - 移動速度 +0.05
   - 最大体力 -20%
 - 栄養ドリンク
   - 移動速度上昇 Lv1 20秒
   - 採掘速度上昇 Lv1 20秒
   - 再生 Lv4 20秒
   - 満腹度回復 Lv21 20秒
 - 防具アップグレードキット
   - 着用している防具を上位互換
   - 右クリックで使用
 - ツールアップグレードキット
   - オフハンドのツールを上位互換
   - 右クリックで使用
 - 怪盗予告
   - 誰かのメインハンドのアイテムを5秒後に盗む
   - 右クリックで使用
 - エリトラ
   - 壊れかけ
 - エヴォーカーの牙の杖
   - 周囲にエヴォーカーの牙を召喚
   - 5回使用可能
   - 右クリックで発動
     - 前方に、牙が約20m連なって出現
   - スニーク＋右クリックで発動
     - 周囲2mに、牙が連なって出現
 - 発信機 ×3
   - 誰かの座標を通知
   - 右クリックで使用
 - 緊急招集 (チーム戦のみ)
   - 仲間チームを全員使用者の場所にテレポート
   - 右クリックで使用
 - モバイルリスポーンビーコン (チーム戦のみ)
   - リスポーンバナーを使用で仲間を救出
 - エンドポータルフレームセット
   - エンドポータルフレーム ×12
   - エンダーアイ ×12
 - 帰還ポータル
   - エンドから帰還できるポータルを設置
 - 金リンゴ ×5
 - 焼いたジャガイモ ×15
 - ステーキ ×5
 - 怪しげなシチュー ×5

## スタッフ
 - 企画 : ぽたーじゅ [@potage00](https://twitter.com/potagegatop)
 - 制作/著作 : きざはしるか [@KizahashiLuca](https://twitter.com/KizahashiLuca)
