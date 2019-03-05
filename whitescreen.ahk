;When not network administrator add logic for email address



;Variables_____________________________________________________________

window = start


;Starting GUI_______________________________________________________________

start:
Gui, Add, Text, x112 y29 w230 h30 , How widespread are the connection issues?
Gui, Add, Button, x52 y89 w160 h40 , One/Specific Students
Gui, Add, Button, x232 y89 w160 h40 , Multiple/Random Students
; Generated using SmartGUI Creator 4.0
Gui, Show, x483 y269 h166 w445, Testing Issues
Return



;Student exp GUI________________________________________________________________
student:
Gui, Add, CheckBox, x32 y139 w190 h20 , End of test
Gui, Add, CheckBox, x32 y159 w190 h20 , Launching Secure Browser/App
Gui, Add, CheckBox, x32 y179 w190 h20 , Test session login
Gui, Add, CheckBox, x252 y139 w190 h20 , Confirming student
Gui, Add, CheckBox, x252 y159 w190 h20 , While testing
Gui, Add, CheckBox, x252 y179 w190 h20 , Resuming test
Gui, Add, Text, x32 y119 w380 h20 , When are students experiencing white screens?
Gui, Add, CheckBox, x32 y49 w110 h20 , White Screens
Gui, Add, CheckBox, x32 y69 w130 h20 , Please raise your hand
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, CheckBox, x222 y49 w180 h20 , You cannont continue at this time
Gui, Add, Text, x32 y209 w130 h20 , Time of Day
Gui, Add, Radio, x32 y229 w70 h20 , Morning
Gui, Add, Radio, x102 y229 w80 h20 , Afternoon
Gui, Add, Radio, x182 y229 w120 h20 , Throughout the day
Gui, Add, Text, x32 y29 w200 h20 , What error are the students receiving?
Gui, Add, Button, x102 y259 w270 h50 , Next
; Generated using SmartGUI Creator 4.0
Gui, Show, x493 y272 h325 w495, Testing Issues - Student Experience
Return



;Impact GUI________________________________________________________________

impact:
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, Radio, x32 y39 w180 h20 , One classroom
Gui, Add, Radio, x32 y59 w180 h20 , Multiple classrooms
Gui, Add, Radio, x32 y79 w180 h20 , One school
Gui, Add, Radio, x32 y99 w180 h20 , Mutliple Schools
Gui, Add, Radio, x32 y119 w180 h20 , Whole district
Gui, Add, Text, x32 y19 w200 h20 , Where are testing issues being reported?
Gui, Add, Radio, x252 y39 w180 h20 , Every student
Gui, Add, Radio, x252 y59 w170 h20 , Intermittent
Gui, Add, Radio, x252 y79 w180 h20 , Sporatic
Gui, Add, Text, x252 y19 w190 h20 , How frequent are the testing issues?
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, Text, x92 y169 w140 h20 , Number of students testing
Gui, Add, Edit, x122 y189 w80 h20 ,
Gui, Add, Text, x232 y169 w140 h20 , Number of students effected
Gui, Add, Edit, x252 y189 w90 h20 , Edit
Gui, Add, Button, x212 y449 w150 h-90 , Button
Gui, Add, Button, x42 y219 w170 h50 , Previous
Gui, Add, Button, x262 y219 w160 h50 , Next
; Generated using SmartGUI Creator 4.0
Gui, Show, x538 y240 h287 w465, Testing Issues - Impact
Return


;System GUI_______________________________________________________________

system:
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, Button, x212 y59 w150 h0 , Button
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, CheckBox, x32 y199 w180 h20 , Using secure testing browser
Gui, Add, Text, x32 y149 w180 h20 , Connection type
Gui, Add, Radio, x32 y169 w100 h20 , Wireless
Gui, Add, Radio, x132 y169 w90 h20 , Wired
Gui, Add, Radio, x222 y169 w110 h20 , Mixed
Gui, Add, Text, x32 y229 w250 h20 , Does refreshing the Secure Testing Browser help?
Gui, Add, Radio, x32 y249 w100 h20 , Yes
Gui, Add, Radio, x132 y249 w100 h20 , No
Gui, Add, Text, x32 y19 w180 h20 , What devices are they testing on?
Gui, Add, CheckBox, x32 y39 w100 h20 , Windows
Gui, Add, CheckBox, x32 y59 w100 h20 , Mac
Gui, Add, CheckBox, x132 y39 w100 h20 , Chromebook
Gui, Add, CheckBox, x132 y59 w100 h20 , iPad
Gui, Add, CheckBox, x252 y39 w120 h20 , Other (please specify)
Gui, Add, Edit, x272 y59 w100 h20 , Edit
Gui, Add, Text, x32 y89 w180 h20 , What OS are the devices running?
Gui, Add, Edit, x32 y109 w180 h20 , Edit
Gui, Add, Button, x32 y289 w160 h50 , Previous
Gui, Add, Button, x242 y289 w150 h50 , Next
; Generated using SmartGUI Creator 4.0
Gui, Show, x508 y234 h355 w423, Testing Issues - System Information
Return



;Network Administrator GUI________________________________________________________________

network:
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, Button, x212 y59 w150 h0 , Button
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, Button, x202 y219 w170 h40 , Submit
Gui, Add, Button, x22 y219 w170 h40 , Previous
Gui, Add, Text, x42 y49 w220 h20 , Is partner the network administrator?
Gui, Add, Radio, x42 y69 w60 h20 , Yes
Gui, Add, Radio, x102 y69 w60 h20 , No
Gui, Add, Text, x42 y109 w150 h20 , Network administrator's name:
Gui, Add, Edit, x192 y109 w110 h20 , Edit
Gui, Add, Text, x42 y139 w140 h20 , Networks administrator email:
Gui, Add, Edit, x192 y139 w110 h20 , Edit
Gui, Add, CheckBox, x42 y189 w190 h20 , Network administrator is unknown
; Generated using SmartGUI Creator 4.0
Gui, Show, x575 y230 h272 w390, Testing Issues - Network Administrator
Return

GuiClose:
ExitApp



ButtonOne/SpecificStudents:
  { Gui, Submit
    window = student
    Gosub, student
    return
    }
ButtonNext:
    If window = student
    {
      Gui, Submit
      window = impact
      Gosub, impact
      return
    } else if window = impact
    {
      Gui, Submit
      window = system
      Gosub, system
      return
    } else if window = system
    {
      Gui, Submit
      window = network
      Gosub, network
      return
    }
