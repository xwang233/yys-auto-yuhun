;; Include my library functions
#include functions.ahk

F10::

;; TS Plugin is writen using C++, developed using VC2008, 
;;   and open sourced at http://bbs.tyuyan.net/thread-45659-1-1.html
;; The author acknowledges the development of TC Plugin


;; Register the TS Plugin version 4.019

Global ts

need_ver := "4.019"
RunWait, regsvr32 /s TSPlug.dll

ts := ComObjCreate("ts.tssoft")
if (ts.ver() <> need_ver) { 
  msgbox, "register failed'
  return
}
OutputDebug, "register succeed"


;; Binding the game emulator window, and resize it to 1136*640

hwnd := ts.FindWindow("", "阴阳师-网易游戏")
ts_ret := ts.BindWindow(hwnd,"dx2","windows","windows",0)
if (ts_ret <> 1){
  msgbox, "binding failed"
  return
}
OutputDebug, "binding succeed"
sleep, 2000
;ts_ret := ts.SetClientSize(hwnd, 1136, 640)
;OutputDebug, % ts_ret

;; The following code can check the client size

;w := ComVar(), h := ComVar()
;w[] :=0, h[] := 0
;ts_ret := ts.GetClientSize(hwnd, w.ref, h.ref)
;OutputDebug, % w[]
;OutputDebug, % h[]


;; Color debugging
coldebug := 0
while (coldebug = 0){
  tscoldebug := ts.GetColor(1, 1)
  OutputDebug, % tscoldebug
  if(tscoldebug <>"000000" and tscoldebug <> "ffffff"){
    coldebug := 1
  }
  sleep, 200
}

InputBox, emyc, % "Select which enemy should be clicked", % "Enter a number: `r0 - Do not click enemy. `r1 - Click enemy in the middle. `r2 - Click enemy in the right."

thestart:
;; Now, let's start solo farming YUHUN

WTFC1(807, 442, "f3b25e", 807, 881, 442, 459, 0, hwnd, 1)
OutputDebug, % "already clicked TIAO-ZHAN"

WTFC1(1031, 613, "764f2d", 988, 1067, 481, 528, 0, hwnd, 1)
OutputDebug, % "already clicked ZHUN-BEI"

inbattle := 0
while (inbattle = 0){
  colib := ts.GetColor(71, 577)
  if (colib = "f7f2df") {
    inbattle := 1
  }
  sleep, 500
}
OutputDebug, % "now we are in the battle"

while (inbattle = 1){
  ; 点击中间怪物
  if (emyc = 1) {
    CRND(509, 579, 153, 181, hwnd)
  }

  ; 点击右边怪物
  if (emyc = 2) {
  CRND(773, 856, 159, 190, hwnd)
  }

  colib := ts.GetColor(71, 577)
  if (colib <> "f7f2df") {
    inbattle := 0
  }
  mysleep(500, 500)
}
OutputDebug, % "battle finished"

jiesuan := 0
while (jiesuan = 0){
  CRND(980, 1088, 225, 405, hwnd)

  coljs := ts.GetColor(807, 442)
  if (coljs = "f3b25e") {
    jiesuan := 1
  }
  mysleep(500, 500)
}
OutputDebug, % "back to YUHUN level selection"

Goto, thestart


ts_ret := ts.UnBindWindow()

Return


F12:: 
  OutputDebug, % "reloading ..."
  ts_ret := ts.UnBindWindow()
  Reload
Return





