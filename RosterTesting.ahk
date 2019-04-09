#NoEnv
SendMode Input
SetTitleMatchMode, 1

;Variables
;Gui1 - select the error type (file format, file data, reconcilable)
;Gui2 - File Format Error walkthrough - steps2
;Gui3 - File Data Error - steps3
;Gui4 - Reconcilable Error - steps4
;Preview Button (Every Page)- run through the Array and Populate with the selections from Gui with new line after every population (if yes > populate + `n)
;Submit Button (Every Page)- Prints Array


;--------------------------Variables--------------------------
;Creating an array for the output to print the case notes
    ;List := []   ;;this was going to be for use of storing the case notes in an array. Won't use tho.
  ;Variables
    ;these three are for storing the steps from each Gui
    steps2 := ""
    steps3 := ""
    steps4 := ""

    ;store the issue
    issue := ""

    ;additional comments section for each GUI
    additional2 := ""
    additional3 := ""
    additional4 := ""

    ;resolution in case notes
    resolution :=
    ;store all case notes
    caseNotes := ""

    ;Case Management
    subject := ""
    subCategory := ""

    ;keep track of the current tab and window.
    id := WinExist("A")
    WinGetActiveTitle, Title
    tabFound :=

    ;don't need these
    ;FileDataError = "Issue/Update:`nPartner has students missing from reports.`n`nSteps Taken:`n"
    ;FileFormatError := "abc this is a string"

;;GUI1 With radio buttons for error type

    Gui, 1: Add, Text, x97 y9 w140 h20 +Center,Choose the roster error type:
    Gui, 1: Add, Radio, x22 y39 w110 h20 vMyRadio Group Checked,File Format Error
    Gui, 1: Add, Radio, x22 y69 w110 h20 ,File Data Error
    Gui, 1: Add, Radio, x22 y99 w110 h20 ,Reconcilable Error
    Gui, 1: Add, Text, x192 y39 w80 h20 ,State contract
    Gui, 1: Add, DropDownList, x192 y69 w80 h100 vstate, |No||AR|NE|NV
    Gui, 1: Add, Button, x2 y129 w330 h60 , Next

;;GUI2 for File Format Errors

    Gui, 2: Add, CheckBox, x11 y39 w380 h30 vCSV, Verify that you have saved the file in the CSV (Comma delimited) format (Comma Separated Values (.csv) on Macs)
    Gui, 2: Add, CheckBox, x11 y79 w380 h30 vFields, Verify that the template has all the required fields
    Gui, 2: Add, CheckBox, x11 y119 w380 h30 vBlank, Check for blank columns at the end of the file
    Gui, 2: Add, Text, x66 y9 w270 h20, See KA 2219 for more detailed steps on troubleshooting
    Gui, 2: Add, CheckBox, x11 y159 w380 h30 vNew, Move the data to a new document
    Gui, 2: Add, CheckBox, x11 y199 w380 h30 vCommas, Open your roster file in Notepad and confirm that each piece of data is separated by a comma
    Gui, 2: Add, CheckBox, x11 y239 w380 h30 vlmi2, Initiated screen share session.
    Gui, 2: Add, CheckBox, x11 y279 w380 h30 vPosted2, Posted all valid records.
    Gui, 2: Add, Checkbox, x11 y319 w380 h30 vTier2, Transferred to Tier 2.
    Gui, 2: Add, Text, x12 y359 w110 h20, Additional Comments:
    Gui, 2: Add, Edit, x11 y389 w380 h50 vFormatNotes,
    Gui, 2: Add, Button, x12 y449 w185 h30 +Disabled, Previous
    Gui, 2: Add, Button, x207 y449 w185 h30, Next
    Gui, 2: Add, Button, x12 y489 w380 h40, Submit

;;GUI3 for File Data Errors

    Gui, 3: Add, Text, x56 y9 w280 h20, See KA 1706 for more information on using Excel filtering.
    Gui, 3: Add, CheckBox, x12 y39 w200 h30 vFilter, Used excel filtering to resolve errors.
    Gui, 3: Add, CheckBox, x12 y79 w310 h30 vNoData, No errors in this step and proceeded to Reconcilable Errors.
    Gui, 3: Add, CheckBox, x12 y119 w310 h30 vlmi3, Initiated screen share session.
    Gui, 3: Add, CheckBox, x12 y159 w250 h30 vPosted3, Posted all valid records.
    Gui, 3: Add, CheckBox, x12 y199 w250 h30 vTier3, Transferred to Tier 2.
    Gui, 3: Add, Text, x12 y239 w120 h20, Additional Notes
    Gui, 3: Add, Edit, x12 y269 w370 h50 vDataNotes,
    Gui, 3: Add, Button, x12 y329 w180 h30, Previous
    Gui, 3: Add, Button, x202 y329 w180 h30, Next
    Gui, 3: Add, Button, x12 y369 w370 h40, Submit


;;GUI4 for Reconcilable Errors

    Gui, 4: Add, Text, x50 y9 w360 h20, Choose the type of error reconciled and see the KA for more information:
    Gui, 4: Add, CheckBox, x17 y39 w190 h20 vSchool, School Errors (KA 1759)
    Gui, 4: Add, CheckBox, x17 y69 w190 h20 vEthnic, Ethnic Group Errors	 (KA 1757)
    Gui, 4: Add, CheckBox, x17 y99 w190 h20 vGrade, Grade Errors (KA 2296)
    Gui, 4: Add, CheckBox, x17 y129 w190 h20 vProgram, Program Errors (KA 3764)
    Gui, 4: Add, CheckBox, x252 y39 w190 h20 vInstructor, Instructor Errors (KA 2286)
    Gui, 4: Add, CheckBox, x252 y69 w190 h20 vStudent, Student Errors (KA 2286)
    Gui, 4: Add, CheckBox, x252 y129 w190 h20 vNoRec, No errors in this step
    Gui, 4: Add, CheckBox, x252 y190 w190 h20 vlmi4, Initiated screen share session.
    Gui, 4: Add, CheckBox, x17 y159 w190 h20 vPosted4, Posted all valid records.
    Gui, 4: Add, CheckBox, x252 y159 w200 h20 vTier4, Transferred to Tier 2.
    Gui, 4: Add, Text, x32 y189 w110 h20 , Additional Comments:
    Gui, 4: Add, Edit, x25 y219 w410 h50 vReconcilableNotes,
    Gui, 4: Add, Button, x22 y279 w205 h30 , Previous
    Gui, 4: Add, Button, x237 y279 w205 h30 +Disabled, Next
    Gui, 4: Add, Button, x22 y319 w420 h40, Submit

;;show initial gui on startup
    Gui, 1: Show, , Roster Errors
    Return

GuiClose:
2GuiClose:
3GuiClose:
4GuiClose:
  ExitApp

;Buttons for Gui1
    ButtonNext:
    {
      Gui, Submit ;save and hide the current GUI
    ;first time they click Next, check to see what the error type is from the GUI1

      if (myRadio==1)
      {
        issue := "Partner is getting the following error when uploading their roster: We have encountered an error with your file."
        subject := "We Have Encountered an Error With Your File"
        subCategory := "Start New Import"
        Gui, 2: Show, AutoSize , File Format Error
        Return
      }
      else if (myRadio==2)
      {
        issue := "Partner is getting errors after confirming their roster file."
        subject := "Errors After Confirming"
        subCategory := "File Errors"
        Gui, 3: Show, AutoSize , File Data Error
        Return
      }
      else if(myRadio==3)
      {
        issue := "Partner is having trouble with some reconcilable errors."
        subject := "Reconcilable Errors"
        subCategory := "Reconcile Errors"
        ;SHOW GUI FOR RECONCILABLE ERRORS
        Gui, 4: Show, AutoSize , Reconcilable Errors
        Return
      }
      Return
    }

;;Buttons for GUI2
    2ButtonNext:
    {
        Gui, Submit

        Gui, 3: Show, AutoSize , File Data Error
        Return
    }


;;Buttons for GUI3
    3ButtonNext:
    {
        Gui, SUbmit
        Gui, 4: Show, AutoSize , Reconcilable Errors
        Return
    }

    ;;hides data errors and shows File Format Error
    3ButtonPrevious:
    {
        Gui, Submit
        Gui, 2: Show, AutoSize , File Format Error
        Return
    }

;;Buttons for GUI4
    ;;hides reconcilable and shows file data error GUI
    4ButtonPrevious:
    {
      Gui, Submit
      Gui, 3: Show, AutoSize , File Data Error
      Return
    }

;;Submit Buttons for All
    ButtonSubmit:
    2ButtonSubmit:
    3ButtonSubmit:
    4ButtonSubmit:
    {
      Gui, Submit ;Saves user input

      ;add all the notes to the steps2 and additional2 for this section
      if lmi2
        steps2 := "Initiated screen share session.`n"
      if (CSV or Fields or Blank or New or Commas)
        steps2 .= "Walked partner through the following:`n"
      if CSV
        steps2 .= "-Making sure the file is saved in the CSV (Comma delimited) format or Comma Separated Values (.csv) on Macs.`n"
      if Fields
        steps2 .= "-Verifying the template has all required fields`n"
      if Blank
        steps2 .= "-Checking for blank columns at the end of the file`n"
      if New
        steps2 .= "-Move the data to a new document`n"
      if Commas
        steps2 .= "-Opening the roster file in Notepad and confirming that each piece of data is separated by a comma`n"
      if (FormatNotes != "")
        additional2 .= FormatNotes "`n"

      ;add all the notes to the steps3 and additional3 for this section
      if (Filter AND lmi3 && myRadio<>2)
        steps3 := "Partner had some data errors in their files.`nInitiated screen share session.`nWalked partner through using excel filtering to resolve the errors.`n"
      else if (Filter && !lmi3 && myRadio<>2)
        steps3 := "Partner had some data errors in their files.`nWalked partner through using excel filtering to resolve the errors.`n"
      else if (Filter && lmi3 && myRadio==2)
        steps3 := "Initiated screen share session.`nWalked partner through using excel filtering to resolve the errors.`n"
      else if (Filter && !lmi3 && myRadio==2)
        steps3 := "Walked partner through using excel filtering to resolve the errors.`n"
      if (DataNotes != "")
        additional3 := DataNotes "`n"

      ;add all the notes to the steps4 and additional4 for this section
      if (Ethnic OR Grade OR Program OR Instructor OR Student OR School && myRadio<>3 && !lmi4)
        steps4 := "Partner had some reconcilable errors to repair.`nWalked partner through reconciling the following errors:`n"
      else if (Ethnic OR Grade OR Program OR Instructor OR Student OR School && myRadio<>3 && lmi4)
        steps4 := "Partner had some reconcilable errors to repair.`nInitiated screen share session.`nWalked partner through reconciling the following errors:`n"
      else if (Ethnic OR Grade OR Program OR Instructor OR Student OR School && myRadio==3 && !lmi4)
        steps4 := "Walked partner through reconciling the following error(s):`n"
      else if (Ethnic OR Grade OR Program OR Instructor OR Student OR School && myRadio==3 && lmi4)
        steps4 := "Initiated screen share session.`nWalked partner through reconciling the following error(s):`n"
      if Ethnic
        steps4 .= "-Ethnic Group`n"
      if Grade
        steps4 .= "-Grade`n"
      if Program
        steps4 .= "-Program`n"
      if School
        steps4 .= "-School`n"
      if Instructor
        steps4 .= "-Instructor`n"
      if Student
        steps4 .= "-Student`n"
      if (ReconcilableNotes != "")
        additional4 := ReconcilableNotes "`n"

      if (Posted2 or Posted3 or Posted4)
        resolution := "Partner was able to post all valid records."
      if (tier2 or tier3 or tier4)
        resolution := "Promoting to Tier 2 for further support."
      if !(posted2 or Posted3 or Posted4) and !(tier2 or tier3 or tier4)
        resolution := "Partner will continue working on their roster."

      casenotes := issue "`n`n" steps2 additional2 steps3 additional3 steps4 additional4 "`n" resolution

      WinActivate, ahk_id %id% ;returns focus to browser
      WinGetActiveTitle, StartingTitle ;used to auto exit if tab not found
      loop
          {
            ;loops over all open tabs to find starting tab
            WinGetActiveTitle, CurrentTitle
            If (Title = CurrentTitle)
            {
              break
            }
            send {Control down}{PgUp}{Control Up}
            Sleep 100
          }
        If state = no
          Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}import profile{tab 2}error{tab}%subCategory%{tab 2}n/a{tab 6}%subject%{tab}%issue%{tab}%caseNotes%{Enter 2}{U+02cc}{End}
        If state = AR
          Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}import profile{tab 2}error{tab}%subCategory%{tab 2}ar{tab 2}solved by u{tab}{enter}{tab 3}%subject%{tab}%issue%{tab}%caseNotes%{Enter 2}{U+02cc}{End}
        If state = NE
          Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}import profile{tab 2}error{tab}%subCategory%{tab 2}ne{tab 2}solved by u{tab}{enter}{tab 3}%subject%{tab}%issue%{tab}%caseNotes%{Enter 2}{U+02cc}{End}
        If state = NV
          Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}import profile{tab 2}error{tab}%subCategory%{tab 2}nv{tab 2}solved by u{tab}{enter}{tab 3}%subject%{tab}%issue%{tab}%caseNotes%{Enter 2}{U+02cc}{End}
        ExitApp
    }
