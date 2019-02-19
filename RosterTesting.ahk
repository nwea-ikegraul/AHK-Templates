#NoEnv
SendMode Input
SetTitleMatchMode, 1

;Variables
;Gui1 - select the error type (file format, file data, reconcilable)
;Gui2 - File Format Error walkthrough
;Gui3 - File Data Error
;Gui4 - Reconcilable Error
;Preview Button (Every Page)- run through the Array and Populate with the selections from Gui with new line after every population (if yes > populate + `n)
;Submit Button (Every Page)- Prints Array


;--------------------------Variables--------------------------
;Creating an array for the output to print the case notes
    List := []
    ;Variables
    errorType := 0
    caseNotes :=
    ;FileDataError = "Issue/Update:`nPartner has students missing from reports.`n`nSteps Taken:`n"
    ;FileFormatError := "abc this is a string"
    id := WinExist("A")
    WinGetActiveTitle, Title
    tabFound :=


;Create GUI1 With radio buttons for error type
    Gui, New
    ;Gui, Add, Text, x2 y-1 w390 h30 , Roster Errors
    Gui, Add, Button, x2 y100 w390 h60 , Next
    Gui, Add, Text, x102 y0 w160 h30 +Center, Choose the roster error type
    Gui, Add, Radio, vMyRadio Group Checked, File Format Error
    Gui, Add, Radio, , File Data Error
    Gui, Add, Radio, , Reconcilable Error
    Gui, Add, text, , %A_Username%
    Gui, Show, , Roster Errors
    Return

    GuiClose:
    ExitApp

;Buttons for Gui1
    ButtonNext:
    {
      Gui, Submit, NoHide ;Saves user input

      ;Check to see what the error type is, if none has been assigned yet, Make the myRadio value into errorType
      ;KEEPS CREATING TWO FREAKKKKKKKKK

      If (errorType == 0)
      {
        errorType := myRadio
        Gui, Destroy
        Gosub, Gui2
        return
      }

      ;There should never be errorType = 1 except for once in the first check and then it is automatically switched to two once the Gui2 subroutine runs
      ;Runs Gui3 subroutine
      if (errorType == 2)
      {
        Gui,Destroy
        Gosub, Gui3
        Return
      }

      else if(errorType == 3)
      {
        Gui, Destroy
        GoSub, Gui4
        Return
      }

    }

    ButtonPreview:
    {
      GuiControl, Enable, Submit
      GuiControl, Enable, Next
      Gui, Submit, NoHide ;Saves user input

    }

    ButtonSubmit:
    {
      Gui, Submit, NoHide ;Saves user input
      WinActivate, ahk_id %id% ;returns focus to browser
      WinGetActiveTitle, StartingTitle ;used to auto exit if tab not found
      loop
            {
              ;loops over all open tabs to find starting tab
              send {Control down}{PgUp}{Control Up}
              Sleep 100
              WinGetActiveTitle, CurrentTitle
              If (Title = CurrentTitle)
              {
                break
              }
            }

    }



;Gui2 - File Format Error
Gui2:
  {
  Gui, new
  Gui, Add, Text, x2 y-1 w390 h30 , Missing from Reports
  Gui, Add, Edit, x2 y29 w380 h240 vcaseNotes, %caseNotes%
  Gui, Add, Button, x2 y579 w390 h60 , Next
  Gui, Add, Text, x102 y279 w160 h30 +Center, Student missing from reports
  Gui, Show, x846 y101 h649 w398, NOTICE ME SENPAI

  errorType += 1
  Return
  }

;Gui3 - File Data Error
Gui3:
  {
    Gui, New
    Gui, Add, Button, x2 y100 w390 h60, Next
    Gui, Show,, THIS ONE IS DIFFERENT??>?
    errorType := errorType + 1
    Return
  }

;Gui4 - Reconcilable Error
Gui4:
  {
    Gui, New
    Gui, Add, Button, x2 y100 w390 h60, Submit
    Gui, Show,, This is even more different.
    errorType := errorType + 1
    Return
  }
