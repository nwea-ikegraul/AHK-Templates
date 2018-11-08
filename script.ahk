#NoEnv
SendMode Input


::studentmissingreport:: ;Hotstring to start students missing from reports template
  {
      ;Create GUI
      Gui, Add, Text,, Is the whole class missing or just specific student(s)?
      Gui, Add, Button, -default, Whole Class
      Gui, Add, Button, -default, Specific Students
      Gui, Show,, Students Missing from Reports
      return

      ;create the GUI for specific students and add buttons/text
      ButtonSpecificStudents:
        scope := student
        Gui, Destroy
        Gui, Add, Text,, Student's Name
        Gui, Add, Text,, Test
        Gui, Add, Text,, Report
        Gui, Add, Edit, vStudentName ym
        Gui, Add, Edit, vTest
        Gui, Add, Edit, vReport, Unspecified
        Gui, Add, Button, default, Next
        Gui, Show,, Students Missing from Reports
      return

      ;create the GUI for class and add buttons/text
      ButtonWholeClass:
        scope := class
        Gui, Destroy
        Gui, Add, Text,, Teachers's Name
        Gui, Add, Text,, Class Name
        Gui, Add, Text,, Test
        Gui, Add, Text,, Report
        Gui, Add, Edit, vTeachersName ym
        Gui, Add, Edit, vClassName
        Gui, Add, Edit, vTest
        Gui, Add, Edit, vReport, Unspecified
        Gui, Add, Button, default, Next
        Gui, Show,, Students Missing from Reports
      return

      ButtonNext:
        if (scope = student)
          Send 
  }
