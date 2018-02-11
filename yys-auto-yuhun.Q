[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=37c873e3-b6da-492f-a948-a94b743da024
Description=yys自动御魂
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[Script]
Function REJXSX()
	IfColor (-603+stx+1359) , (717+sty-237), "5769DB", 0 Then
		Call Plugin.Bkgnd.LeftClick(Hwnd, 756, 458)
		Delay 1000
	End If
End Function


stx = - 1359 
sty = 350

//stx = 50
//sty = 50

xs = 8
ys = 30


TracePrint stx
TracePrint sty

Hwnd = Plugin.Window.MousePoint()

Call Plugin.Window.Move(Hwnd, stx, sty)

//Call Plugin.Window.Active(Hwnd)

tts = 0


Rem start

//KeyPress "1", 1
 Randomize

Call REJXSX()
  While 1 = 1
  	 
   x = Int(((-472) - (-546)) * Rnd + (-546+stx+1359))
   y = Int((733 - 706) * Rnd + 706 + sty-237)
  // MoveTo x, y
   Delay 100 + Rnd * 100
   //LeftClick 1
   
   Call REJXSX()
   Call Plugin.Bkgnd.LeftClick(Hwnd,x-stx-xs,y-sty-ys)
    Delay 1000 + Rnd * 100
   //LeftClick 1
   Call Plugin.Bkgnd.LeftClick(Hwnd,x-stx-xs,y-sty-ys)
   // click enter the battle
   
   If tts = 0 Then 
    tts = 1
   	j = 0
   	Delay 9000
   	//如果红叉出现 点击X拒绝悬赏
	Call REJXSX()
   	col = GetPixelColor(- 307  + stx + 1359, 994 + sty - 350)
   	TracePrint col
   End If   
   
   j = 1
   While j <> 0	   
 	  j = j+1
   	  If j >= 600 Then 
   	  	EndScript
   	  End If
   	  
   	  Call REJXSX()
 	  IfColor (-307+stx+1359),(994+sty-350),col,0 Then
  	    j = 0
 	  End If
   	    
   	  Delay 100 + Rnd * 100
   wend
   // now we are in the battle
   
   x = Int(((-268) - (-364)) * Rnd + (-364+stx+1359))
   y = Int((815 - 722) * Rnd + 722 + sty-237)
   //MoveTo x, y
   Delay 100 + Rnd * 100
   //LeftClick 1
   Call Plugin.Bkgnd.LeftClick(Hwnd,x-stx-xs,y-sty-ys)
   // click start the battle
   
   Delay 2000  
   i=1 // 1 means still in the battle
While i = 1
   	//如果红叉出现 点击X拒绝悬赏
	Call REJXSX()
		
	//“自动”的白色消失 说明战斗结束
   IfColor (-1307+stx+1359) , (859+ sty-237), "E0F3F8", 1 Then
     i=0
	End If
	Delay 333 + Rnd*100
    
    
   x = Int(((-473) - (-534)) * Rnd + (-534+stx+1359))
   y = Int((520 - 411) * Rnd + 411+ sty-237)
   //MoveTo x, y
   //LeftClick 1
   
   Call REJXSX()
   
  //Call Plugin.Bkgnd.LeftClick(Hwnd,x-stx-xs,y-sty-ys)
   // 点最右边怪物
   
   x = Int((614-498) * Rnd +498)
   y = Int((229-97) * Rnd +97)
  Call Plugin.Bkgnd.LeftClick(Hwnd,x,y)
   // 点中间怪物
   
    Delay 333 + Rnd * 166
    
Wend
    
   Delay 555 + Rnd * 555
   Call REJXSX()

   k=1
While k = 1
   x = Int(((-1197) - (-1330)) * Rnd + (-1330+stx+1359))
   y = Int((797 - 330) * Rnd + 330+ sty-237)
   //MoveTo x, y
   Delay 100 + Rnd * 100
   //LeftClick 1
   Call REJXSX()
   Call Plugin.Bkgnd.LeftClick(Hwnd,x-stx-xs,y-sty-ys)
   // click 结算
   

	Call REJXSX()
   IfColor (-512+stx+1359), (726+ sty-237), "5EB2F3", 0 Then
     k=0
	End If
	


    Delay 2000 + Rnd*100
Wend
   // 已返回主界面
   
   Wend
