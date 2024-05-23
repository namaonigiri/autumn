;===============================================================================
; タイトル画面のサンプルシナリオ
;===============================================================================

[wait time=200]
*title|タイトル
[startanchor]
[clearvar]
[store enabled="false"]
[history enabled="false" output="false"]

[delay speed="nowait"]
[mus m = "title.wav"]
[position layer=message0 width=800 height=195 left=0 top=420 frame=void.png marginl = 0 margint = 0 marginr = 0 marginb = 0]
[image storage = title.png page = fore layer = base]
[locate x = 300 y = -5]
[button graphic="start1.png" target = "*start"]
[locate x = 300 y = 55]
[button graphic = "continue1.png" target = "*load"]
[locate x = 550 y = -5]
[button graphic = "config.png" target = "*config"]
[if exp='Storages.isExistentStorage("%s/%s%d.bmp".sprintf(kag.saveDataLocation, kag.dataName, MBSystemPref.quickSaveBookMark))']
	[locate x = 550 y = 115]
	[button graphic = "quickload.png" target = "*continue"]
[endif]
[delay speed="user"]
[s]

;-------------------------------------------------------------------------------
; 最初からスタート
*start
[cm]
[history enabled="true" output="true"]
[fadeoutbgm time = 200]
[jump storage="test.ks"]
[s]

;-------------------------------------------------------------------------------
; プレイデータをロード
*load
[cm]
[eval exp="SystemManager.startPlayDataStorager('load')"]
[waittrig name="CLOSE_BOOKMARK_WINDOW"]
[jump target="*title"]
[s]

;-------------------------------------------------------------------------------
; クイックロード
*continue
[cm]
[load place="&MBSystemPref.quickSaveBookMark" ask="false"]
[s]

;-------------------------------------------------------------------------------
; 環境設定
*config
[cm]
[iscript]
tf.config = new MBControlPanelContainer(kag, kag.fore.base);
MBSystem.addTempObject(tf.config);
[endscript]
[waittrig name="end_config_from_kag"]
[eval exp="MBSystem.removeTempObject(tf.config);"]
[jump target="*title"]
[s]

;-------------------------------------------------------------------------------
; ゲーム終了
*exit
[close]
[unlocklink]
[s]
