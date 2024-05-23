;
*start|

; 改ページマクロ[end]。セーブポイントにもなる。
[macro name="end"]
[rclick enabled = true]
[p]
[cm]
[label]
[cm]
[endmacro]

[macro name = "1"]
[current layer = message1]
[er]
[endmacro]

[macro name = "0"]
[current layer = message0]
[rclick enabled = false]
[endmacro]

[macro name = "mus"]
[fadeoutbgm time = 500]
[fadeinbgm time = 500 loop = true storage = %m]
[endmacro]

[macro name = "sbgm"]
[fadeoutbgm time = 500]
[endmacro]

;メッセージウィンドウ表示
[macro name="showmessagewindow"]
[position layer = message1 visible = true width = 250 height = 50 left = 30 top = 360 marginb = 0 marginl = 20 marginr = 0]
[position frame = tarea.png layer = message0 visible = true width = 800 height = 195 left = 0 top = 420 margint = 40 marginb = 40 marginl = 60 marginr = 60]
[endmacro]

;キャラを中央に配置 layer0
[macro name="show0"]
[image storage = %ch page = fore layer = 0 visible = true left = 180]
[endmacro]

[macro name ="delete0"]
[image storage = "void.png" page = fore layer = 0 visible = true]
[image page = fore storage = "void.png" layer = 0 visible = false]
[endmacro]

[macro name ="delete1"]
[image storage = "void.png" page = fore layer = 1 visible = true]
[image page = fore storage = "void.png" layer = 1 visible = false]
[endmacro]

;背景変更black
[macro name="chbgb"]
[current layer=message0]
[backlay]
[image storage = "black.png" layer = base page = back]
[position visible=false page=back]
[trans method = crossfade time = 750]
[wt]
[current layer=message0 page=fore]
[backlay]
[image storage = %bg layer = base page = back]
[position page=back visible=true]
[trans method = crossfade time = 750]
[wt]
[endmacro]

[macro name="chbgw"]
[current layer=message0]
[backlay]
[image storage = "white.jpg" layer = base page = back]
[position visible=false page=back]
[trans method = crossfade time = 750]
[wt]
[current layer=message0 page=fore]
[backlay]
[image storage = %bg layer = base page = back]
[position page=back visible=true]
[trans method = crossfade time = 750]
[wt]
[endmacro]

[return]