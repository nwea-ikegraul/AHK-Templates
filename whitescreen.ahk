#NoEnv
SendMode Input
SetTitleMatchMode, 2



Gui, Add, CheckBox, x32 y139 w190 h20 , End of test
Gui, Add, CheckBox, x32 y159 w190 h20 , Launching Secure Browser/App
Gui, Add, CheckBox, x32 y179 w190 h20 , Test session login
Gui, Add, CheckBox, x252 y139 w190 h20 , Confirming student
Gui, Add, CheckBox, x252 y159 w190 h20 , While testing
Gui, Add, CheckBox, x252 y179 w190 h20 , Resuming test
Gui, Add, Radio, x32 y279 w180 h20 , One classroom
Gui, Add, Radio, x32 y299 w180 h20 , Multiple classrooms
Gui, Add, Radio, x32 y319 w180 h20 , One school
Gui, Add, Radio, x32 y339 w180 h20 , Mutliple Schools
Gui, Add, Radio, x32 y359 w180 h20 , Whole district
Gui, Add, Text, x32 y259 w200 h20 , Where are white screens being reported?
Gui, Add, Text, x32 y119 w380 h20 , When are students experiencing white screens?
Gui, Add, Radio, x252 y279 w180 h20 , Every student
Gui, Add, Radio, x252 y299 w170 h20 , Intermittent
Gui, Add, Radio, x252 y319 w180 h20 , Sporatic
Gui, Add, Text, x252 y259 w190 h20 , How frequent are the white screens?
Gui, Add, CheckBox, x32 y59 w110 h20 , White Screens
Gui, Add, CheckBox, x32 y79 w130 h20 , Please raise your hand
Gui, Add, CheckBox, x-576 y-133 w568 h252 , CheckBox
Gui, Add, CheckBox, x222 y59 w180 h20 , You cannont continue at this time
Gui, Add, CheckBox, x32 y589 w180 h20 , Using secure testing browser
Gui, Add, Text, x222 y349 w130 h20 , Number of students testing
Gui, Add, Edit, x372 y349 w60 h20 ,
Gui, Add, Text, x222 y379 w140 h20 , Number of students effected
Gui, Add, Edit, x372 y379 w60 h20 , Edit
Gui, Add, Text, x32 y539 w180 h20 , Connection type
Gui, Add, Radio, x32 y559 w100 h20 , Wireless
Gui, Add, Radio, x132 y559 w90 h20 , Wired
Gui, Add, Radio, x222 y559 w110 h20 , Mixed
Gui, Add, Text, x32 y619 w250 h20 , Does refreshing the Secure Testing Browser help?
Gui, Add, Radio, x32 y639 w100 h20 , Yes
Gui, Add, Radio, x132 y639 w100 h20 , No
Gui, Add, Text, x32 y209 w130 h20 , Time of Day
Gui, Add, Radio, x32 y229 w70 h20 , Morning
Gui, Add, Radio, x102 y229 w80 h20 , Afternoon
Gui, Add, Radio, x182 y229 w120 h20 , Throughout the day
Gui, Add, Text, x32 y409 w180 h20 , What devices are they testing on?
Gui, Add, CheckBox, x32 y429 w100 h20 , Windows
Gui, Add, CheckBox, x32 y449 w100 h20 , Mac
Gui, Add, CheckBox, x132 y429 w100 h20 , Chromebook
Gui, Add, CheckBox, x132 y449 w100 h20 , iPad
Gui, Add, CheckBox, x252 y429 w120 h20 , Other (please specify)
Gui, Add, Edit, x272 y449 w100 h20 , Edit
Gui, Add, Text, x32 y479 w180 h20 , What OS are the devices running?
Gui, Add, Edit, x32 y499 w180 h20 , Edit
Gui, Add, Button, x0 y668 w487 h50 , Submit
; Generated using SmartGUI Creator 4.0
Gui, Show, x530 y42 h723 w491, New GUI Window
Return

GuiClose:
ExitApp
