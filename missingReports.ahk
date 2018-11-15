#NoEnv
SendMode Input
OnExit("ExitFunc")
ExitFunc(ExitReason, ExitCode)
    {
      Run missingReports.ahk
    }

::missingreport:: ;Hotstring to start students missing from reports template
  {

      ;Variables used in this script
      window := WinExist("A") ;gets the ID for the current active window where the hotstring was triggered
      attribute =
      caseNotes =
      ;GUI
      ;------------------------

        Gui, Add, Text, x2 y-1 w390 h30 , Missing from Reports
        Gui, Add, Edit, x2 y29 w390 h210 vcaseNotes, <preview>
        Gui, Add, Button, x2 y529 w390 h50 , Submit
        Gui, Add, Tab, x2 y239 w390 h290 , Student|Class
        Gui, Tab, Student
        Gui, Add, Text, x102 y279 w160 h30 +Center, Student missing from reports
        Gui, Tab, Class
        Gui, Add, Text, x102 y279 w170 h30 +Center, Class missing from reports
        Gui, Tab, Student
        Gui, Add, Text, x12 y319 w80 h20 , Student Name
        Gui, Add, Edit, x102 y319 w110 h20 vStudentName
        Gui, Add, Text, x12 y349 w80 h20 , Test Name
        Gui, Add, Edit, x102 y349 w110 h20 vTestName
        Gui, Add, Text, x12 y379 w80 h20 , Report
        Gui, Add, DropDownList, x102 y379 w110 h20 r4 vReport, All||ASG|Student Progress|Student Profile
        Gui, Add, Text, x12 y409 w80 h20 , Test Status
        Gui, Add, DropDownList, x102 y409 w110 h20 vTestStatus, Complete||Suspended|Terminated
        Gui, Add, Text, x12 y439 w80 h20 , Outside of window
        Gui, Add, DropDownList, x102 y439 w110 h20 , No||Yes
        Gui, Add, Button, x12 y469 w200 h40 , Add Student
        Gui, Add, CheckBox, x252 y329 w100 h20 vfirstName, First Name
        Gui, Add, CheckBox, x252 y349 w100 h20 vlastName, Last Name
        Gui, Add, CheckBox, x252 y369 w100 h20 vID, Student ID
        Gui, Add, CheckBox, x252 y389 w100 h20 vDOB, Date of Birth
        Gui, Add, CheckBox, x252 y409 w100 h20 vgender, Gender
        Gui, Add, CheckBox, x252 y429 w100 h20 vgrade, Grade
        Gui, Add, CheckBox, x252 y449 w100 h20 vethnicity, Ethnicity
        Gui, Add, CheckBox, x252 y469 w100 h20 vschoolofRecord, School of Record
        Gui, Add, CheckBox, x252 y489 w100 h20 vclass, Class
        Gui, Add, GroupBox, x242 y309 w120 h210 , Missing Reporting Attributes
        Gui, Show, x923 y99 h582 w397, New GUI Window
      Return


        ;Compiles all gathered information and creates case notes
        ButtonAddStudent:
          Gui, Submit ;Saves user input

          If DOB {
            attribute .= "Date of birth `n"
          }
          If gender{
            attribute .= "Gender `n"
          }

          If ethnicity{
            attribute .= "Ethnicity `n"
          }
          If class{
            attribute .= "Class `n"
          }
          If schoolofRecord {
            attribute .= "School of Record `n"
          }
          If firstName {
            attribute .= "First Name `n"
          }
          If lastName {
            attribute .= "Last Name `n"
          }
          If ID {
            attribute .= "ID `n"
          }
          If attribute <> ;if reporting attributes are missing
          {
            caseNotes.= "Student is missing reporting attributes: `n%attribute%"
          }










          WinActivate, ahk_id %window% ;returns to window where hotstring was triggered
          Send %caseNotes%
          ExitApp


  }
