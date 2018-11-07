#NoEnv
SendMode Input


#+s::
  {
    Gui, Add, Button, -default, Student missing on report
    Gui, Show,, Case Notes
    return

    ButtonStudentmissingonreport: ;Button for
      Gui, Submit
      Gui, New, ,Student Missing on Reports
      Gui, Add, Button, -default, Reporting Attributes
      Gui, Add, Button, -default, Outside Window
      Gui, Show,, Case Notes
      return

    ButtonReportingAttributes:
      Gui, Add, Edit, vStudentName
      Gui, Add, Button, default, OK



    ButtonOutsideWindow:
      Gui, Add, Edit, vStudentName
      Gui, Add, Button, default, OK
  }
