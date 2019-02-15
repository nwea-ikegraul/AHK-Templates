#NoEnv
SendMode Input
SetTitleMatchMode, 2
;add k-2 test reward screen click next
::#reportmissing:: ;Hotstring to start students missing from reports template




  {

      ;Variables_____________________________________________________________

      attribute =
      caseNotes =
      subject := "Student missing from reports"
      description := "Partner has students missing from reports"
      steps =
      SetTitleMatchMode, 1
      id := WinExist("A")
      WinGetActiveTitle, Title
      tabFound :=

      ;GUI________________________________________________________________
      ;!!!!!!!!!!ADD STATE CONTRACT!!!!!!!!!!!!!!!!!

        Gui, Add, Text, x2 y-1 w390 h30 , Missing from Reports
        Gui, Add, Edit, x2 y29 w390 h210 vcaseNotes, %caseNotes%
        GuiControl,, caseNotes, Partner has students missing from reports.`n-----------------------`n`n
        Gui, Add, Button, x2 y529 w390 h50 , Submit
        Gui, Add, Text, x102 y279 w160 h30 +Center, Student missing from reports
        Gui, Add, Text, x12 y319 w80 h20 , Student Name
        Gui, Add, Edit, x102 y319 w110 h20 vStudentName
        Gui, Add, Text, x12 y349 w80 h20 , Test Name
        Gui, Add, Edit, x102 y349 w110 h20 vTestName
        Gui, Add, Text, x12 y379 w80 h20 , Report
        Gui, Add, DropDownList, x102 y379 w110 h20 r4 vReport, All||ASG|Student Progress|Student Profile
        Gui, Add, Text, x12 y409 w80 h20 , Test Status
        Gui, Add, DropDownList, x102 y409 w110 h20 r4 vTestStatus, Complete||Suspended|Suspended 28 days+|Terminated
        Gui, Add, Text, x12 y439 w80 h30 , Outside of window
        Gui, Add, DropDownList, x102 y439 w110 h20 r2 vTestWindow, No||Yes
        Gui, Add, Button, x12 y469 w200 h40 , Add Student
        Gui, Add, CheckBox, x252 y329 w100 h20 vfirstName, First Name
        Gui, Add, CheckBox, x252 y349 w100 h20 vlastName, Last Name
        Gui, Add, CheckBox, x252 y369 w100 h20 vstudentID, Student ID
        Gui, Add, CheckBox, x252 y389 w100 h20 vDOB, Date of Birth
        Gui, Add, CheckBox, x252 y409 w100 h20 vstudentGender, Gender
        Gui, Add, CheckBox, x252 y429 w100 h20 vstudentGrade, Grade
        Gui, Add, CheckBox, x252 y449 w100 h20 vstudentEthnicity, Ethnicity
        Gui, Add, CheckBox, x252 y469 w100 h20 vschoolofRecord, School of Record
        Gui, Add, CheckBox, x252 y489 w100 h20 vstudentClass, Class
        Gui, Add, GroupBox, x242 y309 w120 h210 , Missing Reporting Attributes
        Gui, Show, x923 y99 h582 w397, New GUI Window
      Return

;Buttons_____________________________________________________________________________________
        ;Compiles all gathered information and creates case notes
        ButtonAddStudent:
          Gui, Submit, NoHide ;Saves user input
          steps .= "Student:"
          steps .= StudentName
          steps .="`nTest: "
          steps .= TestName
          steps .="`n"

          ;Complie attribues for case notes
          If DOB {
            attribute .= "Date of birth`n"
          }
          If studentGender{
            attribute .= "Gender`n"
          }

          If studentEthnicity{
            attribute .= "Ethnicity`n"
          }
          If studentClass{
            attribute .= "Class`n"
          }
          If schoolofRecord {
            attribute .= "School of Record`n"
          }
          If firstName {
            attribute .= "First Name`n"
          }
          If lastName {
            attribute .= "Last Name`n"
          }
          If studentID {
            attribute .= "ID`n"
          }
          If studentGrade {
            attribute .= "Grade`n"
          }

          ;Add reasons for test missing on reports to the case notes

          If TestStatus = Suspended
          {
            steps.= "The test is suspended.`n"
          }

          If TestStatus = Terminated
          {
            steps.= "The test is Terminated.`n"
          }

          If attribute <> ;if reporting attributes are missing
          {
            steps.= "Student is missing reporting attributes: `n" attribute
          }

          If TestWindow = "Yes"
          {
            steps.= "Test was taken outside the window."
          }
          MsgBox, %attribute%
          caseNotes .= steps
          steps = `n
          attribute =
          GuiControl,, caseNotes, %caseNotes%
          return





        ButtonSubmit:
            Gui, Submit, NoHide ;Saves user input
            caseNotes .= steps
            WinActivate, ahk_id %id%
            WinGetActiveTitle, StartingTitle
            loop{
                  send {Control down}{PgUp}{Control Up}
                  Sleep 100
                  WinGetActiveTitle, CurrentTitle
                  If (Title = CurrentTitle) {
                      break
                      }

                  }
            Send {shift down}{tab 10}{shift up}map g{tab}view reports{tab 2}error{tab}locate{tab 2}n/a{tab 6}Student Missing from Reports{tab}Partner has students missing from reports{tab}%caseNotes%{End}

            ExitApp
}
