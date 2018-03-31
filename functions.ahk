/*
  Copyright (C) <2018>  <https://github.com/society765/yys-auto-yuhun>
    
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/



;; CRND(x1, x2, y1, y2, hwnd)
;; Randomly left click once in a square area with top left (x1, y1), bottom right (x2, y2)
CRND(x1, x2, y1, y2){
  global ts
  random, xrr, x1, x2
  random, yrr, y1, y2
  ts.moveto(xrr, yrr)
  mysleep(10, 10)
  ts.leftclick()
  mysleep(10, 10)
}

;; WTFC1(colx, coly, coll, x1, x2, y1, y2, zzz, hwnd, adv)
;; explanation will be given soon
WTFC1(colx, coly, coll, x1, x2, y1, y2, zzz, adv){
  global ts
  j := 0
  flgj :=0
  while (j = 0){
    REJXS()
    coltest := ts.GetColor(colx, coly)
    ;OutputDebug, % coltest
    if ((coltest = coll and zzz = 0) or (coltest <> coll and zzz = 1)) {
      flgj := 1
    }
    if (flgj = 1) {
      REJXS()
      CRND(x1, x2, y1, y2)
      mysleep(1000, 333)
      if (adv = 0) {
        j := 1
      }
      REJXS()
      coltest2 := ts.GetColor(colx, coly)
      if ((coltest2 = coll and zzz = 1) or (coltest2 <> coll and zzz = 0)) {
        j := 1
      }
    }
  }
}

REJXS(){
  global ts
  colxs := ts.GetColor(750, 458)
  ;OutputDebug, % colxs
  if (colxs = "df715e"){
    CRND(750-5, 750+5, 458-5, 458+5)
    OutputDebug, % "successfully rejected XUAN-SHANG"
    sleep, 1000
  }
  sleep, 50
}

;;mysleep
mysleep(slpa, slpb){
  random, slpbr, 0, slpb
  sleep, slpa + slpbr
}

; ComVar: Creates an object which can be used to pass a value ByRef.
;   ComVar[] retrieves the value.
;   ComVar[] := Val sets the value.
;   ComVar.ref retrieves a ByRef object for passing to a COM function.
ComVar(Type=0xC)
{
    static base := { __Get: "ComVarGet", __Set: "ComVarSet", __Delete: "ComVarDel" }
    ; Create an array of 1 VARIANT.  This method allows built-in code to take
    ; care of all conversions between VARIANT and AutoHotkey internal types.
    arr := ComObjArray(Type, 1)
    ; Lock the array and retrieve a pointer to the VARIANT.
    DllCall("oleaut32\SafeArrayAccessData", "ptr", ComObjValue(arr), "ptr*", arr_data)
    ; Store the array and an object which can be used to pass the VARIANT ByRef.
    return { ref: ComObject(0x4000|Type, arr_data), _: arr, base: base }
}

ComVarGet(cv, p*) { ; Called when script accesses an unknown field.
    if p.MaxIndex() = "" ; No name/parameters, i.e. cv[]
        return cv._[0]
}

ComVarSet(cv, v, p*) { ; Called when script sets an unknown field.
    if p.MaxIndex() = "" ; No name/parameters, i.e. cv[]:=v
        return cv._[0] := v
}

ComVarDel(cv) { ; Called when the object is being freed.
    ; This must be done to allow the internal array to be freed.
    DllCall("oleaut32\SafeArrayUnaccessData", "ptr", ComObjValue(cv._))
}