#NoEnv
SendMode Input


::studentmissingreport:: ;Hotstring to start students missing from reports template
  {
      ;Create GUI
      Gui, Add, Text,, Is the whole class missing or just specific student(s)?
      Gui, Add, Button, -default, Whole Class
      Gui, Add, Button, -default, Specific Students

      ;create the GUI for specific students and add buttons/text
      Gui, Add, Text,, Student's Name
      Gui, Add, Text,, Test
      Gui, Add, Test,, Report
      Gui, Add, Edit, vStudentName ym
      Gui, Add, Edit, vTest
      Gui, Add, Edit, vReport, Unspecified
      return


  }
