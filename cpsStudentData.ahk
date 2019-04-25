

;Variables_____________________________________________________________
Description :=""
summary :=""
issueBrief :=""
issueFull :=""
caseTitle :=""
id := WinExist("A")
WinGetActiveTitle, Title

;Main GUI_____________________________________________________________
Gui, Add, Button, x32 y69 w190 h30 gDuplicate, Duplicate profile
Gui, Add, Text, x32 y19 w190 h40 +Center, CPS Student Data Issues
Gui, Add, Button, x32 y109 w190 h30 gMissing, Incorrect/Missing data
Gui, Add, Button, x32 y149 w190 h30 gRetest, Retest
Gui, Show, x604 y249 h216 w253 , CPS Student Data Errors

;Student data incorrect or missing GUI_____________________________________________________________
Gui, 2:Add, Text, x42 y19 w170 h20 , Incorrect/Missing Data
Gui, 2:Add, Radio, x12 y49 w290 h20 group vmissingData, Student information missing/incorrect on dashboard
Gui, 2:Add, Radio, x12 y69 w290 h20 , Student missing attributes
Gui, 2:Add, Radio, x12 y89 w300 h20 , Student listed in wrong school
Gui, 2:Add, Radio, x12 y109 w290 h20 , Update/change student data
Gui, 2:Add, Button, x52 y139 w200 h50 gContinue, Continue
;

;CPS Ticket GUI_____________________________________________________________
Gui, 3:Add, Edit, x162 y59 w190 h20 vticketNumber
Gui, 3:Add, Text, x32 y59 w120 h20 , Ticket Number
Gui, 3:Add, Text, x32 y109 w120 h20 , Issue from ticket
Gui, 3:Add, Edit, x162 y109 w190 h90 vissue
Gui, 3:Add, Button, x72 y229 w220 h50 gPreview, Preview
Gui, 3:Add, Text, x153 y9 w70 h20 vticket, CPS Ticket


;Preview GUI_____________________________________________________________

Gui, 4:Add, Edit, x42 y39 w400 h90 vsummary gcounter
Gui, 4:Add, Edit, x42 y149 w400 h140 vDescription, %Description%
Gui, 4:Add, Button, x132 y309 w210 h40 gsubmit, Submit
Gui, 4:Add, Text, x42 y19 w180 h20 vcharCount, CPS Case Summary
Gui, 4:Add, Text, x42 y129 w150 h20 , Description
return

;Buttons_______________________________________________________

Duplicate:
  caseTitle :="Duplicate student profiles"
  issueBrief :="`n`Advised partner to contact assessment@cps.edu"
  issueFull :="`n`Partner needs to fix a duplicate student profile, advised partner to contact assessment@cps.edu."
  Gui, submit
  Gui, 3:Show, x604 y249 h304 w380, CPS Ticket Information
  return

Missing:
  Gui, submit
  Gui, 2:Show, x604 y249 h201 w310, Student data incorrect or missing
  return

Continue:
  Gui, submit
  if missingData = 1
  {
    caseTitle :="Student data missing on dashboard"
    issueBrief := "`n`Advised partner to contact assessment@cps.edu"
    issueFull := "`n`Partner states student data is missing on the dashboard. Advised partner to contact assessment@cps.edu"
    }
  if missingData = 2
  {
    caseTitle :="Student missing attributes"
    issueBrief := "`n`Advised partner to contact their school programmer."
    issueFull := "`n`Partner has a student who is missing attributes. Advised partner to contact their school programmer."
    }
  if missingData = 3
  {
    caseTitle :="Student in wrong school"
    issueBrief := "`n`Advised partner to contact their school programmer."
    issueFull := "`n`Partner has a student who is listed in the wrong school. Advised partner to contact their school programmer."
    }
  if missingData = 4
  {
    caseTitle :="Update student data"
    issueBrief := "`n`Advised partner to contact their school programmer."
    issueFull := "`n`Partner needs to update student data. Advised partner to contact their school programmer."
    }
  Gui, 3:Show, x604 y249 h304 w380, CPS Ticket Information
  return

Retest:
  caseTitle :="Restest request"
  issueBrief :="`n`Advised partner to contact assessment@cps.edu"
  issueFull :="`n`Partner would like to retest a student. Advised partner to contact assessment@cps.edu."
  Gui, Submit
  Gui, 3:Show, x604 y249 h304 w380, CPS Ticket Information
  return

counter:
  GuiControlGet, currentString,, summary
  StringLen, Length, currentString
  if Length > 255
  {
    GuiControl, 4:Disable, Submit
    GuiControl, 4:, charCount, CPS Case Summary %Length%/255 TOO MANY CHARACTERS!
  }
  else
  {
    GuiControl, 4:Enable, Submit
    GuiControl, 4:, charCount, CPS Case Summary %Length%/255
  }
  return


Preview:
  Gui, 3:Submit
  Gui, 4:Show, x371 y210 h379 w479, Preview
  summary := issue . issueBrief
  Description := issue . issueFull
  GuiControl,4:,Description, %Description%
  GuiControl,4:,summary, %summary%
  GuiControl, Focus, summary
  Send {Space}{Backspace}
  return



submit:
  Gui, Submit
  WinActivate, ahk_id %id% ;returns focus to browser
  WinGetActiveTitle, StartingTitle ;used to auto exit if tab not found
  loop{ ;loops over all open tabs to find starting tab
        send {Control down}{PgUp}{Control Up}
        Sleep 100
        WinGetActiveTitle, CurrentTitle
        If (Title = CurrentTitle) {
            break
            }
        else if (StartingTitle = CurrentTitle) {
            break
            }
        }

  Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab 2}manage student{tab 2}view{tab 4}%ticketNumber%{tab 12}%caseTitle%{tab}%summary%{tab}%Description%
  ExitApp



GuiClose:
ExitApp
