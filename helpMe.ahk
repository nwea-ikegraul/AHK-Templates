#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

Gui, Add, Text, x11, **Enter one of the following templates in the subject line, making sure the Product Suite is --None-- and Add "ar", "ne", or "nv" for state contracts**
Gui, Add, Tab3,, Templates|Strings|Subject Matter Experts
;FIRST TAB
Gui, Font, s12, Times New Roman
Gui, Add, ListView, r15 w700 NoSortHdr NoSort Grid -Multi -0x8 -LV0x20, Command|Main KA|Result
GuiControl, +Report, ListView
LV_ModifyCol(1,155)
LV_ModifyCol(2,70)
LV_ModifyCol(2,"center")
LV_ModifyCol(3,470)
LV_Add(,"#pass", "1630", "Successfully walked partner through recovering password")
LV_Add(,"#passNoPro", "1630", "Partner has no profile in NWEA")
LV_Add(,"#passEmail", "1630", "Partner's email is incorrect")
LV_Add(,"#testMissingConfirmed", "2249", "Student name is missing from test drop down list - Status Confirmed")
LV_Add(,"#testMissingTesting", "2249", "Student name is missing from test drop down list - Status Testing")
LV_Add(,"#testMissingSuspended", "2249", "Student name is missing from test drop down list - Status Suspended")
LV_Add(,"#testMissingTerminated", "2249", "Student name is missing from test drop down list - Status Terminated")
LV_Add(,"#practiceTest", "1090", "Practice Test Login Information")
LV_Add(,"#reportStuckSubmitted", "3185", "Long Report Times and Reports are stuck in Submitted")
LV_Add(,"#chromebookError", "2444", "Chromebook Screen Resolution Error on Login")
LV_Add(,"#dekalbIT","", "Dekalb IT Wrong Number")
LV_Add(,"#cpsCase", "1298", "CPS Redirect")
LV_Add(,"#studyIsland", "1403", "Study Island export help")
LV_Add(,"#assignTTS", "3507", "Unable to Assign Text-to-speech")
LV_Add(,"#reportMissing", "2348", "A student or students are missing on reports")
LV_Add(,"#rosterErrors", "", "Errors while uploading a roster")
LV_Add(,"#whitescreen", "3330", "Connection Issues While Testing/One Student Cannot Test")
Gui, Add, Button, x307 y435 vClose1, Close


Gui, Tab, Strings
Gui, Add, ListView, r15 w700 Grid -Multi -0x8 -LV0x20, Command|Result
LV_ModifyCol(1,100)
LV_ModifyCol(1,"center")
LV_ModifyCol(2,470)
Gui, Add, Button, x307 y435 vClose2, Close

Loop, Read, Tier1Advanced.ahk
{
  if A_LoopReadLine contains ::
  {
    if A_LoopReadLine not contains #
    {
      RegExMatch(A_LoopReadLine, "::(.*?)::", bitInMiddle)
      RegExMatch(A_LoopReadLine, bitInMiddle . "(.*)", oofta)
      LV_Add(,bitInMiddle1, oofta1)
    }
  }
}

Gui, Tab, Subject Matter Experts


if WinExist("List of Hotstrings")
  WinActivate
Else
{
  Gui, Show, x152 y125 h475, List of Hotstrings
  Return
}
ButtonClose:
2ButtonClose:
GuiClose:
  ExitApp
