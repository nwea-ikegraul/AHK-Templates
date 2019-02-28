#NoEnv
SendMode Input
SetTitleMatchMode, 2

;TODO__________________
;Reset product and reason for contact to --none--


SetTitleMatchMode, 1

;Variables_____________________________________________________________
attribute =
caseNotes = Partner is missing results from reports.`n`n
steps =
id := WinExist("A")
WinGetActiveTitle, Title


;GUI________________________________________________________________

  Gui, Add, Edit, x2 y10 w390 h285 vcaseNotes, %caseNotes%
  Gui, Add, Button, x2 y611 w390 h60 , Submit
  Gui, Add, Text, x12 y319 w80 h20 , Student Name
  Gui, Add, Edit, x102 y319 w110 h20 vStudentName,
  Gui, Add, Text, x12 y349 w80 h20 , Test Name
  Gui, Add, Edit, x102 y349 w110 h20 vTestName,
  Gui, Add, Text, x12 y379 w80 h20 , Report
  Gui, Add, DropDownList, x102 y379 w110 h20 r7 vReport, All||ASG|Class|Class Breakdown|District Summary|Grade|Grade Breakdown|Learning Continuum|Projected Proficiency Summary|Student Goal Setting Worksheet|Student Growth Summary|Student Progress|Student Profile|Screening and Skills Checklist
  Gui, Add, Text, x12 y409 w80 h20 , Test Status
  Gui, Add, DropDownList, x102 y409 w110 h20 r10 vTestStatus, |Complete||Suspended|Suspended 28 days+|Terminated|K-2 Test on reward screen|Didn't test|Invalid - Duration|Invalid - RIT|Invalid - SEM|Invalid - Rapid Guess
  Gui, Add, Text, x12 y439 w80 h30 , Outside of window
  Gui, Add, DropDownList, x102 y439 w110 h20 r2 vTestWindow, No||Yes
  Gui, Add, Button, x2 y550 w390 h60 , Add Student
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
  Gui, Add, Text, x12 y469 w80 h20 , State contract
  Gui, Add, DropDownList, x102 y469 w110 h10 r4 vstate, No||AR|NE|NV
  Gui, Add, Text, x12 y499 w80 h20 , Tested today
  Gui, Add, DropDownList, x102 y499 w110 h10 r2 vetl, No||Yes
  Gui, Add, CheckBox, x72 y529 w250 h20 vtransfer, Unable to resolve`, transfer to tier 2
  Gui, Show, x852 y103 h676 w396, Students missing from reports
  GuiControl, Disable, Submit
Return

GuiClose:
ExitApp




;Buttons_____________________________________________________________________________________

  ButtonAddStudent:
    GuiControl, Enable, Submit
    Gui, Submit, NoHide ;Saves user input
    steps .= "Student: " StudentName "`nTest: " TestName "`nReport: " Report "`nCause: "


    ;Complie attributes for case notes
    If DOB {
      attribute .= "-Date of birth`n"
    }
    If studentGender{
      attribute .= "-Gender`n"
    }

    If studentEthnicity{
      attribute .= "-Ethnicity`n"
    }
    If studentClass{
      attribute .= "-Class`n"
    }
    If schoolofRecord {
      attribute .= "-School of Record`n"
    }
    If firstName {
      attribute .= "-First Name`n"
    }
    If lastName {
      attribute .= "-Last Name`n"
    }
    If studentID {
      attribute .= "-ID`n"
    }
    If studentGrade {
      attribute .= "-Grade`n"
    }

    ;Add reasons for test missing on reports to the case notes

    If TestStatus = Suspended
    {
      steps.= "The test is suspended.`nPartner will have student finish test.`n`n"
    }

    If TestStatus = Terminated
    {
      steps.= "The test is Terminated.`nPartner will have student test again.`n`n"
    }

    If TestStatus = Suspended 28 days+
    {
      steps.= "The test is Terminated due to being suspended for more than 28 days.`nPartner will have student test again.`n`n"
    }

    If TestStatus = K-2 Test on reward screen
    {
      steps.= "The test is complete but the student didn't click next on the reward screen. Partner will start the test, click next and check reports after the overnight update.`n`n"
    }
    If TestStatus = Didn't test
    {
      steps.= "Student didn't take the test. Partner will have the student take the test.`n`n"
    }
    If TestStatus = Invalid - Duration
    {
      steps.= "The test is invalid due to minimum duration not being met. Student will need to test again to get a valid score.`n`n"
    }
    If TestStatus = Invalid - RIT
    {
      steps.= "The test is invalid because the RIT is out of range. Student will need to test again to get a valid score.`n`n"
    }

    If TestStatus = Invalid - SEM
    {
      steps.= "The test is invalid because the SEM is too high. Student will need to test again to get a valid score.`n`n"
    }

    If TestStatus = Invalid - Rapid Guess
    {
      steps.= "The test is invalid because there was a high level of rapid guessing. Student will need to test again to get a valid score.`n`n"
    }

    If attribute <> ;if reporting attributes are missing
    {
      steps.= "Student is missing the following reporting attributes:`n" attribute "`n`n"
      MsgBox, 4,, Can partner manage students?
      IfMsgBox Yes
        steps .= "Partner will add the attributes in manage students and check reports after the overnight update.`n`n"
      else
        steps .= "Partner will work with their Data Administrator, District Assessment Coordinator, or System Administrator to add the reporting attributes. Partner will check reports after the overnight update.`n`n"
    }

    If TestWindow = Yes
    {
    MsgBox, 4,, Can partner modify preferences?
    IfMsgBox Yes
      steps .= "Partner will adjust the test window and check reports after the overnight update.`n`n"
    else
      steps .= "Partner will work with their District Assessment Coordinator or System Administrator to change the test window dates to include any test events. Partner will check reports after the overnight update.`n`n"
  }
    If etl = Yes
    {
      steps .= "Student took the test today. Partner will check reports after the overnight update.`n`n"
    }

    If transfer {
      steps .= "Verified student has all reporting attributes and the test is valid for reporting. Transferred to tier 2."
    }



    ;add steps to case notes then clear the GUI


    caseNotes .= steps
    steps = `n`n
    attribute =
    GuiControl,,StudentName
    GuiControl,,TestName
    GuiControl,,DOB,0
    GuiControl,,studentGender,0
    GuiControl,,studentID,0
    GuiControl,,studentGrade,0
    GuiControl,,studentClass,0
    GuiControl,,studentEthnicity,0
    GuiControl,,firstName,0
    GuiControl,,lastName,0
    GuiControl,,schoolofRecord,0
    GuiControl,,TestWindow,|No||Yes
    GuiControl,,Report,|All||ASG|Class|Class Breakdown|District Summary|Grade|Grade Breakdown|Learning Continuum|Projected Proficiency Summary|Student Goal Setting Worksheet|Student Growth Summary|Student Progress|Student Profile|Screening and Skills Checklist
    GuiControl,,TestStatus, |Complete||Suspended|Suspended 28 days+|Terminated|K-2 Test on reward screen|Didn't test|Invalid - Duration|Invalid - RIT|Invalid - SEM|Invalid - Rapid Guess
    GuiControl,, caseNotes, %caseNotes%
    return





  ButtonSubmit: ;Compiles all gathered information and creates case notes
      Gui, Submit, NoHide ;Saves user input
      caseNotes .= steps ;adds content in steps var to case notes
      WinActivate, ahk_id %id% ;returns focus to browser
      WinGetActiveTitle, StartingTitle ;used to auto exit if tab not found
      loop{ ;loops over all open tabs to find starting tab
            send {Control down}{PgUp}{Control Up}
            Sleep 100
            WinGetActiveTitle, CurrentTitle
            If (Title = CurrentTitle) {
                break
                }

            }

      ;set dropdowns and case notes
      If state = no
      Send {shift down}{tab 10}{shift up}map g{tab}view reports{tab 2}error{tab}locate{tab 2}n/a{tab 6}Student Missing from Reports{tab}Partner has students missing from reports{tab}%caseNotes%{End}

      If state = AR
      Send {shift down}{tab 10}{shift up}map g{tab}view reports{tab 2}error{tab}locate{tab 2}ar{tab 2}solved by u{tab}{enter}{tab 3}Student Missing from Reports{tab}Partner has students missing from reports.{tab}%caseNotes%{End}

      If state = NE
      Send {shift down}{tab 10}{shift up}map g{tab}view reports{tab 2}error{tab}locate{tab 2}ne{tab 2}solved by u{tab}{enter}{tab 3}Student Missing from Reports{tab}Partner has students missing from reports.{tab}%caseNotes%{End}

      If state = NV
      Send {shift down}{tab 10}{shift up}map g{tab}view reports{tab 2}error{tab}locate{tab 2}nv{tab 2}solved by u{tab}{enter}{tab 3}Student Missing from Reports{tab}Partner has students missing from reports.{tab}%caseNotes%{End}


      ExitApp
