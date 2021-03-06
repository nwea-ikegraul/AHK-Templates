#NoEnv
SendMode Input
#SingleInstance Force

;Variables_____________________________________________________________

WinGetActiveTitle, Title
id := WinExist("A")
impactList := ["One Classroom", "Multiple classrooms", "One school", "Multiple schools", "Whole district"]
timeList := {1:"Morning", 2:"Afternoon", 3:"Throughout the day"}
studentList := {1:"Every student",2:"Intermittent",3:"Sporadic"}
yesNo := {1:"Yes", 2:"No"}

;Starting GUI_______________________________________________________________

Gui, Add, Text, x152 y29 w230 h30 , Are they a state contract?
Gui, Add, Radio, x102 y55 w60 h20 group Checked vstate, No
Gui, Add, Radio, x172 y55 w60 h20 , AR
Gui, Add, Radio, x232 y55 w60 h20 , NE
Gui, Add, Radio, x292 y55 w60 h20 , NV
Gui, Add, Text, x112 y129 w230 h30 , How widespread are the connection issues?
Gui, Add, Button, x52 y189 w160 h40 goneStudent, One/Specific Students
Gui, Add, Button, x232 y189 w160 h40 gStart, Multiple/Random Students
Gui, Show, x483 y269 h266 w445, Testing Issues




;Student exp GUI________________________________________________________________

Gui, 2:Add, CheckBox, x32 y139 w190 h20 vissueEnd, End of test
Gui, 2:Add, CheckBox, x32 y159 w190 h20 vissueLaunching, Launching Secure Browser/App
Gui, 2:Add, CheckBox, x32 y179 w190 h20 vissueLogin, Test session login
Gui, 2:Add, CheckBox, x252 y139 w190 h20 vissueConfirming, Confirming student
Gui, 2:Add, CheckBox, x252 y159 w190 h20 vissueTesting, While testing
Gui, 2:Add, CheckBox, x252 y179 w190 h20 vissueResuming, Resuming test
Gui, 2:Add, Text, x32 y119 w380 h20 , When are students experiencing testing issues?
Gui, 2:Add, CheckBox, x32 y49 w110 h20 vissueWhiteScreen, White Screens
Gui, 2:Add, CheckBox, x32 y69 w130 h20 vissueRaiseHand, Please raise your hand
Gui, 2:Add, CheckBox, x222 y49 w180 h20 vissueCannotContine, You cannot continue at this time
Gui, 2:Add, Text, x32 y209 w130 h20 , Time of Day
Gui, 2:Add, Radio, x32 y229 w70 h20 group vissueTime, Morning
Gui, 2:Add, Radio, x102 y229 w80 h20 , Afternoon
Gui, 2:Add, Radio, x182 y229 w120 h20 , Throughout the day
Gui, 2:Add, Text, x32 y29 w200 h20 , What error are the students receiving?
Gui, 2:Add, Button, x102 y259 w270 h50 gstudent, Next




;Impact GUI________________________________________________________________


Gui, 3:Add, Radio, x32 y39 w180 h20 group vimpactSchool, One classroom
Gui, 3:Add, Radio, x32 y59 w180 h20 , Multiple classrooms
Gui, 3:Add, Radio, x32 y79 w180 h20 , One school
Gui, 3:Add, Radio, x32 y99 w180 h20 , Multiple Schools
Gui, 3:Add, Radio, x32 y119 w180 h20 , Whole district
Gui, 3:Add, Text, x32 y19 w200 h20 , Where are testing issues being reported?
Gui, 3:Add, Radio, x252 y39 w180 h20 group vimpactStudents, Every student
Gui, 3:Add, Radio, x252 y59 w170 h20 , Intermittent
Gui, 3:Add, Radio, x252 y79 w180 h20 , Sporadic
Gui, 3:Add, Text, x252 y19 w190 h20 , How frequent are the testing issues?
Gui, 3:Add, Text, x92 y169 w140 h20 , Number of students testing
Gui, 3:Add, Edit, x122 y189 w80 h20 vimpactStudentTesting,
Gui, 3:Add, Text, x232 y169 w140 h20 , Number of students effected
Gui, 3:Add, Edit, x252 y189 w90 h20 vimpactStudentEffected,
Gui, 3:Add, Button, x42 y219 w170 h50 gimpactBack, Previous
Gui, 3:Add, Button, x262 y219 w160 h50 gimpact, Next



;System GUI_______________________________________________________________

Gui, 4:Add, Text, x32 y149 w180 h20 , Connection type
Gui, 4:Add, Radio, x32 y169 w100 h20 group vsystemConnection, Wireless
Gui, 4:Add, Radio, x132 y169 w90 h20 , Wired
Gui, 4:Add, Radio, x222 y169 w110 h20 , Mixed
Gui, 4:Add, Text, x32 y259 w250 h20 , Does refreshing the Secure Testing Browser help?
Gui, 4:Add, Radio, x32 y279 w100 h20 group vsystemRefresh, Yes
Gui, 4:Add, Radio, x132 y279 w100 h20 , No
Gui, 4:Add, Text, x32 y19 w180 h20 , What devices are they testing on?
Gui, 4:Add, CheckBox, x32 y39 w100 h20 vsystemWindows, Windows
Gui, 4:Add, CheckBox, x32 y59 w100 h20 vsystemMac, Mac
Gui, 4:Add, CheckBox, x132 y39 w100 h20 vsystemChromebook, Chromebook
Gui, 4:Add, CheckBox, x132 y59 w100 h20 vsystemIpad, iPad
Gui, 4:Add, CheckBox, x252 y39 w120 h20 vsystemOther, Other (please specify)
Gui, 4:Add, Edit, x272 y59 w100 h20 vsystemOtherType,
Gui, 4:Add, Text, x32 y89 w180 h20 , What OS are the devices running?
Gui, 4:Add, Edit, x32 y109 w180 h20 vsystemOS,
Gui, 4:Add, Button, x32 y319 w160 h50 gsystemBack, Previous
Gui, 4:Add, Button, x242 y319 w150 h50 gsystem, Next
Gui, 4:Add, Text, x32 y199 w230 h20 , Are they using the Secure Testing Browser?
Gui, 4:Add, Radio, x32 y219 w90 h20 group vsystemstb, Yes
Gui, 4:Add, Radio, x122 y219 w100 h20 , No




;Network Administrator GUI________________________________________________________________


Gui, 5:Add, Button, x202 y219 w170 h40 gSubmit, Submit
Gui, 5:Add, Button, x22 y219 w170 h40 gnetworkBack, Previous
Gui, 5:Add, Text, x42 y49 w220 h20 , Is partner the network administrator?
Gui, 5:Add, Radio, x42 y69 w60 h20 group vnetworkAdmin, Yes
Gui, 5:Add, Radio, x102 y69 w60 h20 , No
Gui, 5:Add, Text, x42 y109 w150 h20 , Network administrator's name:
Gui, 5:Add, Edit, x192 y109 w110 h20 vnetworkName
Gui, 5:Add, Text, x42 y139 w140 h20 , Networks administrator email:
Gui, 5:Add, Edit, x192 y139 w110 h20 vnetworkEmail
Gui, 5:Add, CheckBox, x42 y189 w190 h20 vnetworkUnknown, Network administrator is unknown



;One student GUI_______________________________________________________________

Gui, 6:Add, Text, x12 y29 w60 h20 , Student(s):
Gui, 6:Add, Edit, x72 y29 w340 h20 vstudents, 
Gui, 6:Add, Text, x12 y99 w160 h20 , Try testing on a different device
Gui, 6:Add, Radio, x222 y99 w90 h20 group vdevice, Resolved
Gui, 6:Add, Radio, x322 y99 w100 h20 , Didn't Resolve
Gui, 6:Add, Radio, x432 y99 w100 h20 , Suggested
Gui, 6:Add, Text, x12 y59 w180 h20 , Troubleshooting Step
Gui, 6:Add, Text, x252 y59 w220 h20 , Is the issue resolved?
Gui, 6:Add, Text, x12 y159 w170 h20 , Monitor the student while they test
Gui, 6:Add, Radio, x222 y159 w100 h20 group vmonitor, Resolved
Gui, 6:Add, Radio, x322 y159 w100 h20 , Didn't Resolve
Gui, 6:Add, Radio, x432 y159 w100 h20 , Suggested
Gui, 6:Add, Text, x12 y129 w210 h20 , Remove keyboard and use external mouse
Gui, 6:Add, Radio, x222 y129 w100 h20 group vkeyboard, Resolved
Gui, 6:Add, Radio, x322 y129 w100 h20 , Didn't Resolve
Gui, 6:Add, Radio, x432 y129 w100 h20 , Suggested
Gui, 6:Add, Text, x12 y189 w200 h20 , Proctor answers questions for the student
Gui, 6:Add, Radio, x222 y189 w100 h20 group vproctor , Resolved
Gui, 6:Add, Radio, x322 y189 w100 h20 , Didn't Resolve
Gui, 6:Add, Radio, x432 y189 w100 h20 , Suggested
Gui, 6:Add, Text, x12 y259 w250 h50 , Test on internal computer as the student. Don't answer more than 5-10 questions and be sure the test is terminated afterward.
Gui, 6:Add, Radio, x262 y259 w120 h20 group vinternal, Tested without issue
Gui, 6:Add, Radio, x382 y259 w140 h20 , Experienced issues
Gui, 6:Add, Button, x132 y329 w290 h50 goneSubmit, Submit
Return

;Buttons______________________________________________________________________________________

Start:
  {
    Gui, Submit
    Gui, 2:Show, x483 y269 h325 w495, Testing Issues - Student Experience
    return
    }
student:
    {
      Gui, 2:Submit
      Gui, 3:Show, x483 y269 h287 w465, Testing Issues - Impact
      return
    }
impact:
    {
      Gui, 3:Submit
      Gui, 4:Show, x483 y269 h377 w423, Testing Issues - System Information
      return
    }
system:
    {
      Gui, 4:Submit
      Gui, 5:Show, x483 y269 h272 w390, Testing Issues - Network Administrator
      return
    }
studentBack:
    {
      Gui, 2:Submit
      Gui, start:Show, x483 y269 h166 w445, Testing Issues
      return
    }
impactBack:
    {
      Gui, 3:Submit
      Gui, 2:Show, x483 y269 h325 w495, Testing Issues - Student Experience
      return
    }
systemBack:
    {
      Gui, 4:Submit
      Gui, 3:Show, x483 y269 h287 w465, Testing Issues - Impact
      return
      }
networkBack:
    {
      Gui, 5:Submit
      Gui, 4:Show, x483 y269 h377 w423, Testing Issues - System Information
      return
    }

oneStudent:
    {
      Gui, Submit
      Gui, 6:Show, x483 y269 h395 w565, One student cannot test
      return
    }
Submit:
  Gui, Submit
  caseNotes := "Students are reporting:"

  If issueWhiteScreen
  {
    caseNotes .=  " white screens"
  }
  If issueRaiseHand
  {
    caseNotes .= " please raise your hand message"
  }
  If issueCannotContine
  {
    caseNotes .= " you cannot continue message"
  }

  caseNotes .= "`nOccurs:"
  If issueLogin
  {
    caseNotes .= " logging in"
  }
  If issueConfirming
  {
    caseNotes .= " confirming student"
  }
  If issueResuming
  {
    caseNotes .= " resuming test"
  }
  If issueLaunching
  {
    caseNotes .= " launching Secure Testing Browser"
  }
  If issueTesting
  {
    caseNotes .= " while testing"
  }
  If issueEnd
  {
    caseNotes .= " ending the test"
  }

  caseNotes .= "`nTime of day: " timeList[issueTime]
  caseNotes .= "`nImpact: " impactList[impactSchool]
  caseNotes .= "`nFrequency: " studentList[impactStudents]
  caseNotes .= "`nNumber of student effected: " impactStudentEffected
  caseNotes .= "`nNumber of students testing: "impactStudentTesting
  caseNotes .=
  caseNotes .= "`nSecure Testing Browser: " yesNo[systemstb]
  caseNotes .= "`nDoes refreshing help: " yesNo[systemRefresh]
  caseNotes .= "`nDevice(s):"
  If systemWindows
  {
    caseNotes .= " Windows"
  }
  If systemMac
  {
    caseNotes .= " Mac"
  }
  If systemChromebook
  {
    caseNotes .= " Chromebook"
  }
  If systemIpad
  {
    caseNotes .= " iPad"
  }
  If systemOther
  {
    CaseNotes .= " " systemOtherType
  }
  CaseNotes .= "`nOS: " systemOS
  If systemConnection = 1
  {
    CaseNoete .= "`nNetwork type: Wireless"
  } else If systemConnection = 2
  {
    CaseNoete .= "`nNetwork type: Wired"
  } else If systemConnection = 3
  {
    CaseNoete .= "`nNetwork type: Mixed"
  }

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

  If networkAdmin = 1
  {
    caseNotes .= "`n`nPartner is the network administrator, transferred to tier 2."
    MsgBox, Transfer the network administrator to tier 2.
  } else If (networkAdmin = 2 and networkUnknown)
  {
    caseNotes .= "`n`nPartner will have network administrator contact us with the case number."
    MsgBox, Give partner the case number and advise them to have their network administrator call.
  } else If (networkAdmin = 2)
  {
    caseNotes .= "`n`nNetwork administrator: " networkAdmin "`nEmail: " networkEmail "`nLet partner know we will follow up with the network administrator and emailed partner and network administrator at " networkEmail "."
    MsgBox, Be sure to send the whitescreen email to the partner and network administrator.
  }


  If state = 1
  {
    Send {shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}test{tab 2}n/a{tab 6}Students are experiencing testing issues{tab}Students are experiencing testing issues.{tab}%caseNotes%{End}
    }
  If state = 2
  {
    Send {shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}test{tab 2}ar{tab 6}Students are experiencing testing issues{tab}Students are experiencing testing issues.{tab}%caseNotes%{End}
    }
  If state = 3
  {
    Send {shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}test{tab 2}ne{tab 6}Students are experiencing testing issues{tab}Students are experiencing testing issues.{tab}%caseNotes%{End}
    }
  If state = 4
  {
    Send {shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}test{tab 2}nv{tab 6}Students are experiencing testing issues{tab}Students are experiencing testing issues.{tab}%caseNotes%{End}
    }

oneSubmit:
  Gui, Submit
  notResolved := "`n`nPartner has tried the following but the student is still unable to test:`n`"
  resolved :=
  suggested := "`n`nAdvised partner to try the following:`n`"
  caseNotes:= "Partner has specific students that are continually experiencing testing issues.`n`nStudent: " students
  If device = 1
  {
    resolved .= "`n`nStudent was able to test on a different device.`n`"
  } else If device = 2
  {
    notResolved .= "-Testing on a different device`n"
  } else If device = 3
  {
    suggested .= "-Test on a different device`n"
  }
  If monitor = 1
  {
    resolved .= "`n`nThe student was able to test while partner monitored them.`n`"
  } else If monitor = 2
  {
    notResolved .= "-Watched student testing and didn't see them do anything to get kicked out`n"
  } else If monitor = 3
  {
    suggested .= "-Watch the student test`n"
  }
  If keyboard = 1
  {
    resolved .= "`n`nThe student was able to test while the keyboard was removed and using an external mouse. Partner will have student finish the test.`n`"
  } else If keyboard = 2
  {
    notResolved .= "-Keyboard removed/using external mouse`n"
  } else If keyboard = 3
  {
    suggested .= "-Remove the keyboard or use an external mouse`n"
  }
  If proctor = 1
  {
    resolved .= "`n`nProctor sat with the student and recorded students answers. Partner was able to test without issue and will continue to input the answers for the student.`n`"
  } else If proctor = 2
  {
    notResolved .= "-Proctor answered questions as the student`n"
  } else If proctor = 3
  {
    suggested .= "-Proctor sit with the student and select the answers for them`n"
  }

 If (device = 2 or monitor = 2 or keyboard = 2 or proctor = 2)
 {
  caseNotes .= notResolved
 }
 If (device = 3 or monitor = 3 or keyboard = 3 or proctor = 3)
 {
  caseNotes .= suggested
 }

 If (device = 1 or monitor = 1 or keyboard = 1 or proctor = 1)
 {
  caseNotes .= resolved
 } else If internal = 1
 {
  caseNotes .="`n`nLogged in as student and was able to test without issue. Partner will continue monitoring the student as they test."
 } else If internal = 2
 {
  caseNotes .="Logged in as student and also experienced testing issues. Advised partner to create a new profile for the student so they can test. Once they have finished testing, partner will merge the profiles."
 }
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
 If state = 1
 {
   Send {shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}test{tab 2}n/a{tab 6}Specific students are experiencing testing issues{tab}Specific students are experiencing testing issues.{tab}%caseNotes%{End}
   }
 If state = 2
 {
   Send {shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}test{tab 2}ar{tab 6}Specific students are experiencing testing issues{tab}Specific students are experiencing testing issues.{tab}%caseNotes%{End}
   }
 If state = 3
 {
   Send {shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}test{tab 2}ne{tab 6}Specific students are experiencing testing issues{tab}Specific students are experiencing testing issues.{tab}%caseNotes%{End}
   }
 If state = 4
 {
   Send {shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}test{tab 2}nv{tab 6}Specific students are experiencing testing issues{tab}Specific students are experiencing testing issues.{tab}%caseNotes%{End}
   }

ExitApp

GuiClose:
ExitApp
